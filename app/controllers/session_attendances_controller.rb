class SessionAttendancesController < ApplicationController
  before_action :set_session_attendance, only: [:show, :update, :destroy]

  # GET /session_attendances
  def index
    @session_attendances = SessionAttendance.all

    render json: @session_attendances
  end

  # GET /session_attendances/1
  def show
    render json: @session_attendance
  end

  # POST /session_attendances
  def create
    @session_attendance = SessionAttendance.new(session_attendance_params)

    if @session_attendance.save
      render json: @session_attendance, status: :created, location: @session_attendance
    else
      render json: @session_attendance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /session_attendances/1
  def update
    if @session_attendance.update(session_attendance_params)
      render json: @session_attendance
    else
      render json: @session_attendance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /session_attendances/1
  def destroy
    @session_attendance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_attendance
      @session_attendance = SessionAttendance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_attendance_params
      params.fetch(:session_attendance, {})
    end
end
