require "application_system_test_case"

class M6MsTest < ApplicationSystemTestCase
  setup do
    @m6_m = m6_ms(:one)
  end

  test "visiting the index" do
    visit m6_ms_url
    assert_selector "h1", text: "M6 Ms"
  end

  test "creating a M6 m" do
    visit m6_ms_url
    click_on "New M6 M"

    fill_in "Level", with: @m6_m.level
    fill_in "Text", with: @m6_m.text
    fill_in "Type", with: @m6_m.type
    click_on "Create M6 m"

    assert_text "M6 m was successfully created"
    click_on "Back"
  end

  test "updating a M6 m" do
    visit m6_ms_url
    click_on "Edit", match: :first

    fill_in "Level", with: @m6_m.level
    fill_in "Text", with: @m6_m.text
    fill_in "Type", with: @m6_m.type
    click_on "Update M6 m"

    assert_text "M6 m was successfully updated"
    click_on "Back"
  end

  test "destroying a M6 m" do
    visit m6_ms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "M6 m was successfully destroyed"
  end
end
