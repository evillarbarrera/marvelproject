require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Address", with: @person.address
    fill_in "Lost Fight", with: @person.lost_fight
    fill_in "Mail", with: @person.mail
    fill_in "Name", with: @person.name
    fill_in "Point", with: @person.point
    fill_in "Surname", with: @person.surname
    fill_in "Won Fight", with: @person.won_fight
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Address", with: @person.address
    fill_in "Lost Fight", with: @person.lost_fight
    fill_in "Mail", with: @person.mail
    fill_in "Name", with: @person.name
    fill_in "Point", with: @person.point
    fill_in "Surname", with: @person.surname
    fill_in "Won Fight", with: @person.won_fight
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
