class ProjectProfilesController < ApplicationController
  skip_before_action :authenticate_user, only: %i[index]
  before_action :set_project_profile, only: [:show, :update, :destroy]

  # GET /project_profiles
  def index
    @project_profiles = ProjectProfile.all

    render json: @project_profiles
  end

  # GET /project_profiles/1
  def show
    render json: @project_profile
  end

  # POST /project_profiles
  def create
    @project_profile = ProjectProfile.new(project_profile_params)

    if @project_profile.save
      render json: @project_profile, status: :created, location: @project_profile
    else
      render json: @project_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /project_profiles/1
  def update
    if @project_profile.update(project_profile_params)
      render json: @project_profile
    else
      render json: @project_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /project_profiles/1
  def destroy
    @project_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_profile
      @project_profile = ProjectProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_profile_params
      params.require(:project_profile).permit(:project_name)
    end
end
