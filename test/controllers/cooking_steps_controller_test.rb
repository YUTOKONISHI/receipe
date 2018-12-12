require 'test_helper'

class CookingStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooking_step = cooking_steps(:one)
  end

  test "should get index" do
    get cooking_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_cooking_step_url
    assert_response :success
  end

  test "should create cooking_step" do
    assert_difference('CookingStep.count') do
      post cooking_steps_url, params: { cooking_step: { description: @cooking_step.description, image_path: @cooking_step.image_path, number: @cooking_step.number, receipe_id: @cooking_step.receipe_id } }
    end

    assert_redirected_to cooking_step_url(CookingStep.last)
  end

  test "should show cooking_step" do
    get cooking_step_url(@cooking_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooking_step_url(@cooking_step)
    assert_response :success
  end

  test "should update cooking_step" do
    patch cooking_step_url(@cooking_step), params: { cooking_step: { description: @cooking_step.description, image_path: @cooking_step.image_path, number: @cooking_step.number, receipe_id: @cooking_step.receipe_id } }
    assert_redirected_to cooking_step_url(@cooking_step)
  end

  test "should destroy cooking_step" do
    assert_difference('CookingStep.count', -1) do
      delete cooking_step_url(@cooking_step)
    end

    assert_redirected_to cooking_steps_url
  end
end
