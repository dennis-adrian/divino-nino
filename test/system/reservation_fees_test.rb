require "application_system_test_case"

class ReservationFeesTest < ApplicationSystemTestCase
  setup do
    @reservation_fee = reservation_fees(:one)
  end

  test "visiting the index" do
    visit reservation_fees_url
    assert_selector "h1", text: "Reservation fees"
  end

  test "should create reservation fee" do
    visit reservation_fees_url
    click_on "New reservation fee"

    fill_in "Cost", with: @reservation_fee.cost
    fill_in "Description", with: @reservation_fee.description
    fill_in "Type", with: @reservation_fee.type
    click_on "Create Reservation fee"

    assert_text "Reservation fee was successfully created"
    click_on "Back"
  end

  test "should update Reservation fee" do
    visit reservation_fee_url(@reservation_fee)
    click_on "Edit this reservation fee", match: :first

    fill_in "Cost", with: @reservation_fee.cost
    fill_in "Description", with: @reservation_fee.description
    fill_in "Type", with: @reservation_fee.type
    click_on "Update Reservation fee"

    assert_text "Reservation fee was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation fee" do
    visit reservation_fee_url(@reservation_fee)
    click_on "Destroy this reservation fee", match: :first

    assert_text "Reservation fee was successfully destroyed"
  end
end
