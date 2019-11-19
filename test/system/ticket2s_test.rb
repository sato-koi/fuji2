require "application_system_test_case"

class Ticket2sTest < ApplicationSystemTestCase
  setup do
    @ticket2 = ticket2s(:one)
  end

  test "visiting the index" do
    visit ticket2s_url
    assert_selector "h1", text: "Ticket2s"
  end

  test "creating a Ticket2" do
    visit ticket2s_url
    click_on "New Ticket2"

    fill_in "Email", with: @ticket2.email
    fill_in "Name", with: @ticket2.name
    fill_in "Price", with: @ticket2.price
    check "Tent" if @ticket2.tent
    click_on "Create Ticket2"

    assert_text "Ticket2 was successfully created"
    click_on "Back"
  end

  test "updating a Ticket2" do
    visit ticket2s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @ticket2.email
    fill_in "Name", with: @ticket2.name
    fill_in "Price", with: @ticket2.price
    check "Tent" if @ticket2.tent
    click_on "Update Ticket2"

    assert_text "Ticket2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket2" do
    visit ticket2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket2 was successfully destroyed"
  end
end
