require "application_system_test_case"

class ContraceptivesTest < ApplicationSystemTestCase
  setup do
    @contraceptive = contraceptives(:one)
  end

  test "visiting the index" do
    visit contraceptives_url
    assert_selector "h1", text: "Contraceptives"
  end

  test "should create contraceptive" do
    visit contraceptives_url
    click_on "New contraceptive"

    fill_in "Contraceptive type", with: @contraceptive.contraceptive_type_id
    fill_in "Observations", with: @contraceptive.observations
    fill_in "Patient", with: @contraceptive.patient_id
    click_on "Create Contraceptive"

    assert_text "Contraceptive was successfully created"
    click_on "Back"
  end

  test "should update Contraceptive" do
    visit contraceptive_url(@contraceptive)
    click_on "Edit this contraceptive", match: :first

    fill_in "Contraceptive type", with: @contraceptive.contraceptive_type_id
    fill_in "Observations", with: @contraceptive.observations
    fill_in "Patient", with: @contraceptive.patient_id
    click_on "Update Contraceptive"

    assert_text "Contraceptive was successfully updated"
    click_on "Back"
  end

  test "should destroy Contraceptive" do
    visit contraceptive_url(@contraceptive)
    click_on "Destroy this contraceptive", match: :first

    assert_text "Contraceptive was successfully destroyed"
  end
end
