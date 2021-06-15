require "application_system_test_case"

class MedicalCenterTypesTest < ApplicationSystemTestCase
  setup do
    @medical_center_type = medical_center_types(:one)
  end

  test "visiting the index" do
    visit medical_center_types_url
    assert_selector "h1", text: "Medical Center Types"
  end

  test "creating a Medical center type" do
    visit medical_center_types_url
    click_on "New Medical Center Type"

    fill_in "Description", with: @medical_center_type.description
    fill_in "Name", with: @medical_center_type.name
    click_on "Create Medical center type"

    assert_text "Medical center type was successfully created"
    click_on "Back"
  end

  test "updating a Medical center type" do
    visit medical_center_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @medical_center_type.description
    fill_in "Name", with: @medical_center_type.name
    click_on "Update Medical center type"

    assert_text "Medical center type was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical center type" do
    visit medical_center_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical center type was successfully destroyed"
  end
end
