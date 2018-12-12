require 'test_helper'

class AllergensIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allergens_ingredient = allergens_ingredients(:one)
  end

  test "should get index" do
    get allergens_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_allergens_ingredient_url
    assert_response :success
  end

  test "should create allergens_ingredient" do
    assert_difference('AllergensIngredient.count') do
      post allergens_ingredients_url, params: { allergens_ingredient: { allergen_id: @allergens_ingredient.allergen_id, ingredient_id: @allergens_ingredient.ingredient_id } }
    end

    assert_redirected_to allergens_ingredient_url(AllergensIngredient.last)
  end

  test "should show allergens_ingredient" do
    get allergens_ingredient_url(@allergens_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_allergens_ingredient_url(@allergens_ingredient)
    assert_response :success
  end

  test "should update allergens_ingredient" do
    patch allergens_ingredient_url(@allergens_ingredient), params: { allergens_ingredient: { allergen_id: @allergens_ingredient.allergen_id, ingredient_id: @allergens_ingredient.ingredient_id } }
    assert_redirected_to allergens_ingredient_url(@allergens_ingredient)
  end

  test "should destroy allergens_ingredient" do
    assert_difference('AllergensIngredient.count', -1) do
      delete allergens_ingredient_url(@allergens_ingredient)
    end

    assert_redirected_to allergens_ingredients_url
  end
end
