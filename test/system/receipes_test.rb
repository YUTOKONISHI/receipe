require "application_system_test_case"

class ReceipesTest < ApplicationSystemTestCase
  setup do
    @receipe = receipes(:one)
  end

  test "visiting the index" do
    visit receipes_url
    assert_selector "h1", text: "Receipes"
  end

  test "creating a Receipe" do
    visit receipes_url
    click_on "New Receipe"

    fill_in "Image Path", with: @receipe.image_path
    fill_in "Introduction", with: @receipe.introduction
    fill_in "Receipe Category", with: @receipe.receipe_category_id
    fill_in "Title", with: @receipe.title
    fill_in "User", with: @receipe.user_id
    click_on "Create Receipe"

    assert_text "Receipe was successfully created"
    click_on "Back"
  end

  test "updating a Receipe" do
    visit receipes_url
    click_on "Edit", match: :first

    fill_in "Image Path", with: @receipe.image_path
    fill_in "Introduction", with: @receipe.introduction
    fill_in "Receipe Category", with: @receipe.receipe_category_id
    fill_in "Title", with: @receipe.title
    fill_in "User", with: @receipe.user_id
    click_on "Update Receipe"

    assert_text "Receipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Receipe" do
    visit receipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receipe was successfully destroyed"
  end
end
