require 'test_helper'

class SessionAttendancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session_attendance = session_attendances(:one)
  end

  test "should get index" do
    get session_attendances_url, as: :json
    assert_response :success
  end

  test "should create session_attendance" do
    assert_difference('SessionAttendance.count') do
      post session_attendances_url, params: { session_attendance: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show session_attendance" do
    get session_attendance_url(@session_attendance), as: :json
    assert_response :success
  end

  test "should update session_attendance" do
    patch session_attendance_url(@session_attendance), params: { session_attendance: {  } }, as: :json
    assert_response 200
  end

  test "should destroy session_attendance" do
    assert_difference('SessionAttendance.count', -1) do
      delete session_attendance_url(@session_attendance), as: :json
    end

    assert_response 204
  end
end
