require "application_system_test_case"

class ContraceptiveTypesTest < ApplicationSystemTestCase
  setup do
    @contraceptive_type = contraceptive_types(:one)
  end

  test "visiting the index" do
    visit contraceptive_types_url
    assert_selector "h1", text: "Contraceptive types"
  end

  test "should create contraceptive type" do
    visit contraceptive_types_url
    click_on "New contraceptive type"

    fill_in "Description", with: @contraceptive_type.description
    fill_in "Name", with: @contraceptive_type.name
    click_on "Create Contraceptive type"

    assert_text "Contraceptive type was successfully created"
    click_on "Back"
  end

  test "should update Contraceptive type" do
    visit contraceptive_type_url(@contraceptive_type)
    click_on "Edit this contraceptive type", match: :first

    fill_in "Description", with: @contraceptive_type.description
    fill_in "Name", with: @contraceptive_type.name
    click_on "Update Contraceptive type"

    assert_text "Contraceptive type was successfully updated"
    click_on "Back"
  end

  test "should destroy Contraceptive type" do
    visit contraceptive_type_url(@contraceptive_type)
    click_on "Destroy this contraceptive type", match: :first

    assert_text "Contraceptive type was successfully destroyed"
  end
end
