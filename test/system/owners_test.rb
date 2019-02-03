require "application_system_test_case"

class OwnersTest < ApplicationSystemTestCase
  setup do
    @owner = owners(:one)
  end

  test "visiting the index" do
    visit owners_url
    assert_selector "h1", text: "Owners"
  end

  test "creating a Owner" do
    visit owners_url
    click_on "New Owner"

    fill_in "Aadhar no", with: @owner.aadhar_no
    fill_in "Address", with: @owner.address
    fill_in "Contact", with: @owner.contact
    fill_in "Owner name", with: @owner.owner_name
    click_on "Create Owner"

    assert_text "Owner was successfully created"
    click_on "Back"
  end

  test "updating a Owner" do
    visit owners_url
    click_on "Edit", match: :first

    fill_in "Aadhar no", with: @owner.aadhar_no
    fill_in "Address", with: @owner.address
    fill_in "Contact", with: @owner.contact
    fill_in "Owner name", with: @owner.owner_name
    click_on "Update Owner"

    assert_text "Owner was successfully updated"
    click_on "Back"
  end

  test "destroying a Owner" do
    visit owners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Owner was successfully destroyed"
  end
end
