require "test_helper"

class ReservationFeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation_fee = reservation_fees(:one)
  end

  test "should get index" do
    get reservation_fees_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_fee_url
    assert_response :success
  end

  test "should create reservation_fee" do
    assert_difference("ReservationFee.count") do
      post reservation_fees_url, params: { reservation_fee: { cost: @reservation_fee.cost, description: @reservation_fee.description, type: @reservation_fee.type } }
    end

    assert_redirected_to reservation_fee_url(ReservationFee.last)
  end

  test "should show reservation_fee" do
    get reservation_fee_url(@reservation_fee)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_fee_url(@reservation_fee)
    assert_response :success
  end

  test "should update reservation_fee" do
    patch reservation_fee_url(@reservation_fee), params: { reservation_fee: { cost: @reservation_fee.cost, description: @reservation_fee.description, type: @reservation_fee.type } }
    assert_redirected_to reservation_fee_url(@reservation_fee)
  end

  test "should destroy reservation_fee" do
    assert_difference("ReservationFee.count", -1) do
      delete reservation_fee_url(@reservation_fee)
    end

    assert_redirected_to reservation_fees_url
  end
end
