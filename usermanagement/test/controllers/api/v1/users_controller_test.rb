require "test_helper"

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get api_v1_users_add_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_users_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_users_delete_url
    assert_response :success
  end

  test "should get view" do
    get api_v1_users_view_url
    assert_response :success
  end
end
