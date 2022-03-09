require "application_system_test_case"

class MybrosTest < ApplicationSystemTestCase
  setup do
    @mybro = mybros(:one)
  end

  test "visiting the index" do
    visit mybros_url
    assert_selector "h1", text: "Mybros"
  end

  test "creating a Mybro" do
    visit mybros_url
    click_on "New Mybro"

    fill_in "Age", with: @mybro.age
    fill_in "Likes", with: @mybro.likes
    fill_in "Name", with: @mybro.name
    click_on "Create Mybro"

    assert_text "Mybro was successfully created"
    click_on "Back"
  end

  test "updating a Mybro" do
    visit mybros_url
    click_on "Edit", match: :first

    fill_in "Age", with: @mybro.age
    fill_in "Likes", with: @mybro.likes
    fill_in "Name", with: @mybro.name
    click_on "Update Mybro"

    assert_text "Mybro was successfully updated"
    click_on "Back"
  end

  test "destroying a Mybro" do
    visit mybros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mybro was successfully destroyed"
  end
end
