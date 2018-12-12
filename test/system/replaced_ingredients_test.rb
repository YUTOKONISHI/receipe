require "application_system_test_case"

class ReplacedIngredientsTest < ApplicationSystemTestCase
  setup do
    @replaced_ingredient = replaced_ingredients(:one)
  end

  test "visiting the index" do
    visit replaced_ingredients_url
    assert_selector "h1", text: "Replaced Ingredients"
  end

  test "creating a Replaced ingredient" do
    visit replaced_ingredients_url
    click_on "New Replaced Ingredient"

    fill_in "Name", with: @replaced_ingredient.name
    fill_in "Quantity", with: @replaced_ingredient.quantity
    click_on "Create Replaced ingredient"

    assert_text "Replaced ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Replaced ingredient" do
    visit replaced_ingredients_url
    click_on "Edit", match: :first

    fill_in "Name", with: @replaced_ingredient.name
    fill_in "Quantity", with: @replaced_ingredient.quantity
    click_on "Update Replaced ingredient"

    assert_text "Replaced ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Replaced ingredient" do
    visit replaced_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Replaced ingredient was successfully destroyed"
  end
end
