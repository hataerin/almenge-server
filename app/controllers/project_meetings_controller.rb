class ProjectMeetingsController < ApplicationController
  before_action :set_project_meeting, only: [:show, :update, :destroy]

  # GET /project_meetings

  def index
    @project_meetings = ProjectMeeting.all

    render json: @project_meetings
  end

  # GET /project_meetings/1
  def show
    render json: @project_meeting
  end

  # POST /project_meetings

  def create
    @project_meeting = ProjectMeeting.new(project_meeting_params)

    if @project_meeting.save

      render json: @project_meeting, status: :created, location: @project_meeting

    else
      render json: @project_meeting.errors, status: :unprocessable_entity
    end
  end

 
  # PATCH/PUT /project_meetings/1.json
  def update
    if @project_meeting.update(project_meeting_params)
      render :show, status: :ok, location: @project_meeting

    else
      render json: @project_meeting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /project_meetings/1.json

  def destroy
    @project_meeting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_meeting
      @project_meeting = ProjectMeeting.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def project_meeting_params
      # params.fetch(:project_meeting, {})

      params.require(:project_meeting).permit(:project_profile_id, :project_meeting_photo, :absentee, :project_meeting_memo , :project_meeting_upload_at ) # Add :picture as a permitted parameter

    end
end
