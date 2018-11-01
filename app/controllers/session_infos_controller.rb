class SessionInfosController < ApplicationController
  before_action :set_session_info, only: [:show, :update, :destroy]

  # GET /session_infos
  def index
    @session_infos = SessionInfo.all

    render json: @session_infos
  end

  # GET /session_infos/1
  def show
    render json: @session_info
  end

  # POST /session_infos
  def create
    @session_info = SessionInfo.new(session_info_params)

    if @session_info.save
      render json: @session_info, status: :created, location: @session_info
    else
      render json: @session_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /session_infos/1
  def update
    if @session_info.update(session_info_params)
      render json: @session_info
    else
      render json: @session_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /session_infos/1
  def destroy
    @session_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_info
      @session_info = SessionInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_info_params
       params.require(:session_info).permit(:session_datetime, :session_place, :session_activity, :session_content)
    end
end
