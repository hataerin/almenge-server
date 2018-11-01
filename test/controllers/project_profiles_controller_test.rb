require 'test_helper'

class ProjectProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_profile = project_profiles(:one)
  end

  test "should get index" do
    get project_profiles_url, as: :json
    assert_response :success
  end

  test "should create project_profile" do
    assert_difference('ProjectProfile.count') do
      post project_profiles_url, params: { project_profile: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show project_profile" do
    get project_profile_url(@project_profile), as: :json
    assert_response :success
  end

  test "should update project_profile" do
    patch project_profile_url(@project_profile), params: { project_profile: {  } }, as: :json
    assert_response 200
  end

  test "should destroy project_profile" do
    assert_difference('ProjectProfile.count', -1) do
      delete project_profile_url(@project_profile), as: :json
    end

    assert_response 204
  end
end
