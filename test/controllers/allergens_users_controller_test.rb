require 'test_helper'

class AllergensUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allergens_user = allergens_users(:one)
  end

  test "should get index" do
    get allergens_users_url
    assert_response :success
  end

  test "should get new" do
    get new_allergens_user_url
    assert_response :success
  end

  test "should create allergens_user" do
    assert_difference('AllergensUser.count') do
      post allergens_users_url, params: { allergens_user: { allergen_id: @allergens_user.allergen_id, user_id: @allergens_user.user_id } }
    end

    assert_redirected_to allergens_user_url(AllergensUser.last)
  end

  test "should show allergens_user" do
    get allergens_user_url(@allergens_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_allergens_user_url(@allergens_user)
    assert_response :success
  end

  test "should update allergens_user" do
    patch allergens_user_url(@allergens_user), params: { allergens_user: { allergen_id: @allergens_user.allergen_id, user_id: @allergens_user.user_id } }
    assert_redirected_to allergens_user_url(@allergens_user)
  end

  test "should destroy allergens_user" do
    assert_difference('AllergensUser.count', -1) do
      delete allergens_user_url(@allergens_user)
    end

    assert_redirected_to allergens_users_url
  end
end
