require "application_system_test_case"

class AllergensReplacedIngredientsTest < ApplicationSystemTestCase
  setup do
    @allergens_replaced_ingredient = allergens_replaced_ingredients(:one)
  end

  test "visiting the index" do
    visit allergens_replaced_ingredients_url
    assert_selector "h1", text: "Allergens Replaced Ingredients"
  end

  test "creating a Allergens replaced ingredient" do
    visit allergens_replaced_ingredients_url
    click_on "New Allergens Replaced Ingredient"

    fill_in "Allergen", with: @allergens_replaced_ingredient.allergen_id
    fill_in "Replaced Ingredient", with: @allergens_replaced_ingredient.replaced_ingredient_id
    click_on "Create Allergens replaced ingredient"

    assert_text "Allergens replaced ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Allergens replaced ingredient" do
    visit allergens_replaced_ingredients_url
    click_on "Edit", match: :first

    fill_in "Allergen", with: @allergens_replaced_ingredient.allergen_id
    fill_in "Replaced Ingredient", with: @allergens_replaced_ingredient.replaced_ingredient_id
    click_on "Update Allergens replaced ingredient"

    assert_text "Allergens replaced ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Allergens replaced ingredient" do
    visit allergens_replaced_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allergens replaced ingredient was successfully destroyed"
  end
end
