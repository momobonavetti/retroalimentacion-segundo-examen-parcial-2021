require "application_system_test_case"

class MedicalCentersTest < ApplicationSystemTestCase
  setup do
    @medical_center = medical_centers(:one)
  end

  test "visiting the index" do
    visit medical_centers_url
    assert_selector "h1", text: "Medical Centers"
  end

  test "creating a Medical center" do
    visit medical_centers_url
    click_on "New Medical Center"

    fill_in "Address", with: @medical_center.address
    fill_in "Description", with: @medical_center.description
    fill_in "Medical center type", with: @medical_center.medical_center_type_id
    fill_in "Name", with: @medical_center.name
    fill_in "Phone number", with: @medical_center.phone_number
    click_on "Create Medical center"

    assert_text "Medical center was successfully created"
    click_on "Back"
  end

  test "updating a Medical center" do
    visit medical_centers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @medical_center.address
    fill_in "Description", with: @medical_center.description
    fill_in "Medical center type", with: @medical_center.medical_center_type_id
    fill_in "Name", with: @medical_center.name
    fill_in "Phone number", with: @medical_center.phone_number
    click_on "Update Medical center"

    assert_text "Medical center was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical center" do
    visit medical_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical center was successfully destroyed"
  end
end
