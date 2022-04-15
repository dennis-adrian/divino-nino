require "application_system_test_case"

class DrugsTest < ApplicationSystemTestCase
  setup do
    @drug = drugs(:one)
  end

  test "visiting the index" do
    visit drugs_url
    assert_selector "h1", text: "Drugs"
  end

  test "should create drug" do
    visit drugs_url
    click_on "New drug"

    fill_in "Description", with: @drug.description
    fill_in "Name", with: @drug.name
    click_on "Create Drug"

    assert_text "Drug was successfully created"
    click_on "Back"
  end

  test "should update Drug" do
    visit drug_url(@drug)
    click_on "Edit this drug", match: :first

    fill_in "Description", with: @drug.description
    fill_in "Name", with: @drug.name
    click_on "Update Drug"

    assert_text "Drug was successfully updated"
    click_on "Back"
  end

  test "should destroy Drug" do
    visit drug_url(@drug)
    click_on "Destroy this drug", match: :first

    assert_text "Drug was successfully destroyed"
  end
end
