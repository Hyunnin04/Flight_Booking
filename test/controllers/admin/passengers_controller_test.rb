require "test_helper"

class Admin::PassengersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_passengers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_passengers_show_url
    assert_response :success
  end
end
