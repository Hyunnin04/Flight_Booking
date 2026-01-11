require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bookings_new_url
    assert_response :success
  end

  test "should get review" do
    get bookings_review_url
    assert_response :success
  end

  test "should get create" do
    get bookings_create_url
    assert_response :success
  end
end
