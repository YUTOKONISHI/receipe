require 'test_helper'

class ReplacedIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @replaced_ingredient = replaced_ingredients(:one)
  end

  test "should get index" do
    get replaced_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_replaced_ingredient_url
    assert_response :success
  end

  test "should create replaced_ingredient" do
    assert_difference('ReplacedIngredient.count') do
      post replaced_ingredients_url, params: { replaced_ingredient: { name: @replaced_ingredient.name, quantity: @replaced_ingredient.quantity } }
    end

    assert_redirected_to replaced_ingredient_url(ReplacedIngredient.last)
  end

  test "should show replaced_ingredient" do
    get replaced_ingredient_url(@replaced_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_replaced_ingredient_url(@replaced_ingredient)
    assert_response :success
  end

  test "should update replaced_ingredient" do
    patch replaced_ingredient_url(@replaced_ingredient), params: { replaced_ingredient: { name: @replaced_ingredient.name, quantity: @replaced_ingredient.quantity } }
    assert_redirected_to replaced_ingredient_url(@replaced_ingredient)
  end

  test "should destroy replaced_ingredient" do
    assert_difference('ReplacedIngredient.count', -1) do
      delete replaced_ingredient_url(@replaced_ingredient)
    end

    assert_redirected_to replaced_ingredients_url
  end
end
