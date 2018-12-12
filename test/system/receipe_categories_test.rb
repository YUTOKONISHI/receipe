require "application_system_test_case"

class ReceipeCategoriesTest < ApplicationSystemTestCase
  setup do
    @receipe_category = receipe_categories(:one)
  end

  test "visiting the index" do
    visit receipe_categories_url
    assert_selector "h1", text: "Receipe Categories"
  end

  test "creating a Receipe category" do
    visit receipe_categories_url
    click_on "New Receipe Category"

    fill_in "Name", with: @receipe_category.name
    click_on "Create Receipe category"

    assert_text "Receipe category was successfully created"
    click_on "Back"
  end

  test "updating a Receipe category" do
    visit receipe_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @receipe_category.name
    click_on "Update Receipe category"

    assert_text "Receipe category was successfully updated"
    click_on "Back"
  end

  test "destroying a Receipe category" do
    visit receipe_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receipe category was successfully destroyed"
  end
end
