require 'test_helper'

class AllergensReplacedIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allergens_replaced_ingredient = allergens_replaced_ingredients(:one)
  end

  test "should get index" do
    get allergens_replaced_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_allergens_replaced_ingredient_url
    assert_response :success
  end

  test "should create allergens_replaced_ingredient" do
    assert_difference('AllergensReplacedIngredient.count') do
      post allergens_replaced_ingredients_url, params: { allergens_replaced_ingredient: { allergen_id: @allergens_replaced_ingredient.allergen_id, replaced_ingredient_id: @allergens_replaced_ingredient.replaced_ingredient_id } }
    end

    assert_redirected_to allergens_replaced_ingredient_url(AllergensReplacedIngredient.last)
  end

  test "should show allergens_replaced_ingredient" do
    get allergens_replaced_ingredient_url(@allergens_replaced_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_allergens_replaced_ingredient_url(@allergens_replaced_ingredient)
    assert_response :success
  end

  test "should update allergens_replaced_ingredient" do
    patch allergens_replaced_ingredient_url(@allergens_replaced_ingredient), params: { allergens_replaced_ingredient: { allergen_id: @allergens_replaced_ingredient.allergen_id, replaced_ingredient_id: @allergens_replaced_ingredient.replaced_ingredient_id } }
    assert_redirected_to allergens_replaced_ingredient_url(@allergens_replaced_ingredient)
  end

  test "should destroy allergens_replaced_ingredient" do
    assert_difference('AllergensReplacedIngredient.count', -1) do
      delete allergens_replaced_ingredient_url(@allergens_replaced_ingredient)
    end

    assert_redirected_to allergens_replaced_ingredients_url
  end
end
