require "application_system_test_case"

class GuardsTest < ApplicationSystemTestCase
  setup do
    @guard = guards(:one)
  end

  test "visiting the index" do
    visit guards_url
    assert_selector "h1", text: "Guards"
  end

  test "creating a Guard" do
    visit guards_url
    click_on "New Guard"

    fill_in "Guard date", with: @guard.guard_date
    fill_in "Medical center", with: @guard.medical_center_id
    fill_in "Worker", with: @guard.worker_id
    click_on "Create Guard"

    assert_text "Guard was successfully created"
    click_on "Back"
  end

  test "updating a Guard" do
    visit guards_url
    click_on "Edit", match: :first

    fill_in "Guard date", with: @guard.guard_date
    fill_in "Medical center", with: @guard.medical_center_id
    fill_in "Worker", with: @guard.worker_id
    click_on "Update Guard"

    assert_text "Guard was successfully updated"
    click_on "Back"
  end

  test "destroying a Guard" do
    visit guards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guard was successfully destroyed"
  end
end
