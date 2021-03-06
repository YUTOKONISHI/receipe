require "application_system_test_case"

class AllergensIngredientsTest < ApplicationSystemTestCase
  setup do
    @allergens_ingredient = allergens_ingredients(:one)
  end

  test "visiting the index" do
    visit allergens_ingredients_url
    assert_selector "h1", text: "Allergens Ingredients"
  end

  test "creating a Allergens ingredient" do
    visit allergens_ingredients_url
    click_on "New Allergens Ingredient"

    fill_in "Allergen", with: @allergens_ingredient.allergen_id
    fill_in "Ingredient", with: @allergens_ingredient.ingredient_id
    click_on "Create Allergens ingredient"

    assert_text "Allergens ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Allergens ingredient" do
    visit allergens_ingredients_url
    click_on "Edit", match: :first

    fill_in "Allergen", with: @allergens_ingredient.allergen_id
    fill_in "Ingredient", with: @allergens_ingredient.ingredient_id
    click_on "Update Allergens ingredient"

    assert_text "Allergens ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Allergens ingredient" do
    visit allergens_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allergens ingredient was successfully destroyed"
  end
end
