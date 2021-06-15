require "application_system_test_case"

class WorkerTypesTest < ApplicationSystemTestCase
  setup do
    @worker_type = worker_types(:one)
  end

  test "visiting the index" do
    visit worker_types_url
    assert_selector "h1", text: "Worker Types"
  end

  test "creating a Worker type" do
    visit worker_types_url
    click_on "New Worker Type"

    fill_in "Description", with: @worker_type.description
    fill_in "Name", with: @worker_type.name
    click_on "Create Worker type"

    assert_text "Worker type was successfully created"
    click_on "Back"
  end

  test "updating a Worker type" do
    visit worker_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @worker_type.description
    fill_in "Name", with: @worker_type.name
    click_on "Update Worker type"

    assert_text "Worker type was successfully updated"
    click_on "Back"
  end

  test "destroying a Worker type" do
    visit worker_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worker type was successfully destroyed"
  end
end
