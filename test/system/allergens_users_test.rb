require "application_system_test_case"

class AllergensUsersTest < ApplicationSystemTestCase
  setup do
    @allergens_user = allergens_users(:one)
  end

  test "visiting the index" do
    visit allergens_users_url
    assert_selector "h1", text: "Allergens Users"
  end

  test "creating a Allergens user" do
    visit allergens_users_url
    click_on "New Allergens User"

    fill_in "Allergen", with: @allergens_user.allergen_id
    fill_in "User", with: @allergens_user.user_id
    click_on "Create Allergens user"

    assert_text "Allergens user was successfully created"
    click_on "Back"
  end

  test "updating a Allergens user" do
    visit allergens_users_url
    click_on "Edit", match: :first

    fill_in "Allergen", with: @allergens_user.allergen_id
    fill_in "User", with: @allergens_user.user_id
    click_on "Update Allergens user"

    assert_text "Allergens user was successfully updated"
    click_on "Back"
  end

  test "destroying a Allergens user" do
    visit allergens_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allergens user was successfully destroyed"
  end
end
