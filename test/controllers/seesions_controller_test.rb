require "test_helper"

class SeesionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get seesions_new_url
    assert_response :success
  end

  test "should get create" do
    get seesions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get seesions_destroy_url
    assert_response :success
  end
end
