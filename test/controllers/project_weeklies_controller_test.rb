require 'test_helper'

class ProjectWeekliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_weekly = project_weeklies(:one)
  end

  test "should get index" do
    get project_weeklies_url, as: :json
    assert_response :success
  end

  test "should create project_weekly" do
    assert_difference('ProjectWeekly.count') do
      post project_weeklies_url, params: { project_weekly: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show project_weekly" do
    get project_weekly_url(@project_weekly), as: :json
    assert_response :success
  end

  test "should update project_weekly" do
    patch project_weekly_url(@project_weekly), params: { project_weekly: {  } }, as: :json
    assert_response 200
  end

  test "should destroy project_weekly" do
    assert_difference('ProjectWeekly.count', -1) do
      delete project_weekly_url(@project_weekly), as: :json
    end

    assert_response 204
  end
end
