require 'test_helper'

class SessionInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session_info = session_infos(:one)
  end

  test "should get index" do
    get session_infos_url, as: :json
    assert_response :success
  end

  test "should create session_info" do
    assert_difference('SessionInfo.count') do
      post session_infos_url, params: { session_info: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show session_info" do
    get session_info_url(@session_info), as: :json
    assert_response :success
  end

  test "should update session_info" do
    patch session_info_url(@session_info), params: { session_info: {  } }, as: :json
    assert_response 200
  end

  test "should destroy session_info" do
    assert_difference('SessionInfo.count', -1) do
      delete session_info_url(@session_info), as: :json
    end

    assert_response 204
  end
end
