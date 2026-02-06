require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_reservations_url
    assert_response :success
  end

  # test "should get create" do
    # post reservations_url
    # assert_response :success
  #end
end
