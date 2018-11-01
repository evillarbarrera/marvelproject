require "application_system_test_case"

class BattlesTest < ApplicationSystemTestCase
  setup do
    @battle = battles(:one)
  end

  test "visiting the index" do
    visit battles_url
    assert_selector "h1", text: "Battles"
  end

  test "creating a Battle" do
    visit battles_url
    click_on "New Battle"

    fill_in "Characters", with: @battle.characters_id
    fill_in "Date Fight", with: @battle.date_fight
    fill_in "People", with: @battle.people_id
    fill_in "Result", with: @battle.result
    click_on "Create Battle"

    assert_text "Battle was successfully created"
    click_on "Back"
  end

  test "updating a Battle" do
    visit battles_url
    click_on "Edit", match: :first

    fill_in "Characters", with: @battle.characters_id
    fill_in "Date Fight", with: @battle.date_fight
    fill_in "People", with: @battle.people_id
    fill_in "Result", with: @battle.result
    click_on "Update Battle"

    assert_text "Battle was successfully updated"
    click_on "Back"
  end

  test "destroying a Battle" do
    visit battles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Battle was successfully destroyed"
  end
end
