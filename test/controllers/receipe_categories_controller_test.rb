require 'test_helper'

class ReceipeCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipe_category = receipe_categories(:one)
  end

  test "should get index" do
    get receipe_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_receipe_category_url
    assert_response :success
  end

  test "should create receipe_category" do
    assert_difference('ReceipeCategory.count') do
      post receipe_categories_url, params: { receipe_category: { name: @receipe_category.name } }
    end

    assert_redirected_to receipe_category_url(ReceipeCategory.last)
  end

  test "should show receipe_category" do
    get receipe_category_url(@receipe_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_receipe_category_url(@receipe_category)
    assert_response :success
  end

  test "should update receipe_category" do
    patch receipe_category_url(@receipe_category), params: { receipe_category: { name: @receipe_category.name } }
    assert_redirected_to receipe_category_url(@receipe_category)
  end

  test "should destroy receipe_category" do
    assert_difference('ReceipeCategory.count', -1) do
      delete receipe_category_url(@receipe_category)
    end

    assert_redirected_to receipe_categories_url
  end
end
