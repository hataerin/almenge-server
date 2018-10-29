require 'test_helper'

class ProjectMeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_meeting = project_meetings(:one)
  end

  test "should get index" do
    get project_meetings_url, as: :json
    assert_response :success
  end

  test "should create project_meeting" do
    assert_difference('ProjectMeeting.count') do
      post project_meetings_url, params: { project_meeting: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show project_meeting" do
    get project_meeting_url(@project_meeting), as: :json
    assert_response :success
  end

  test "should update project_meeting" do
    patch project_meeting_url(@project_meeting), params: { project_meeting: {  } }, as: :json
    assert_response 200
  end

  test "should destroy project_meeting" do
    assert_difference('ProjectMeeting.count', -1) do
      delete project_meeting_url(@project_meeting), as: :json
    end

    assert_response 204
  end
end
