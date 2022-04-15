require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    fill_in "Date made", with: @reservation.date_made
    fill_in "Patient", with: @reservation.patient_id
    fill_in "Reservation fee", with: @reservation.reservation_fee_id
    fill_in "Schedule", with: @reservation.schedule_id
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "should update Reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    fill_in "Date made", with: @reservation.date_made
    fill_in "Patient", with: @reservation.patient_id
    fill_in "Reservation fee", with: @reservation.reservation_fee_id
    fill_in "Schedule", with: @reservation.schedule_id
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "Reservation was successfully destroyed"
  end
end
