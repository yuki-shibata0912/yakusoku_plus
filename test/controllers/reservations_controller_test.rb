require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_url
    assert_response :success
  end

  test "should create reservation" do
    skip "createのテストは後で追加"
  end
end
