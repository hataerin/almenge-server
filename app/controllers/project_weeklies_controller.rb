class ProjectWeekliesController < ApplicationController
  before_action :set_project_weekly, only: [:show, :update, :destroy]

  # GET /project_weeklies
  def index
    @project_weeklies = ProjectWeekly.all

    render json: @project_weeklies
  end

  # GET /project_weeklies/1
  def show
    render json: @project_weekly
  end

  # POST /project_weeklies
  def create
    @project_weekly = ProjectWeekly.new(project_weekly_params)

    if @project_weekly.save
      render json: @project_weekly, status: :created, location: @project_weekly
    else
      render json: @project_weekly.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /project_weeklies/1
  def update
    if @project_weekly.update(project_weekly_params)
      render json: @project_weekly
    else
      render json: @project_weekly.errors, status: :unprocessable_entity
    end
  end

  # DELETE /project_weeklies/1
  def destroy
    @project_weekly.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_weekly
      @project_weekly = ProjectWeekly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_weekly_params
      params.fetch(:project_weekly, {})
    end
end
