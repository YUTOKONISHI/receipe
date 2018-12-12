require 'test_helper'

class ReceipeEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipe_evaluation = receipe_evaluations(:one)
  end

  test "should get index" do
    get receipe_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_receipe_evaluation_url
    assert_response :success
  end

  test "should create receipe_evaluation" do
    assert_difference('ReceipeEvaluation.count') do
      post receipe_evaluations_url, params: { receipe_evaluation: { rating: @receipe_evaluation.rating, receipe_id: @receipe_evaluation.receipe_id, user_id: @receipe_evaluation.user_id } }
    end

    assert_redirected_to receipe_evaluation_url(ReceipeEvaluation.last)
  end

  test "should show receipe_evaluation" do
    get receipe_evaluation_url(@receipe_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_receipe_evaluation_url(@receipe_evaluation)
    assert_response :success
  end

  test "should update receipe_evaluation" do
    patch receipe_evaluation_url(@receipe_evaluation), params: { receipe_evaluation: { rating: @receipe_evaluation.rating, receipe_id: @receipe_evaluation.receipe_id, user_id: @receipe_evaluation.user_id } }
    assert_redirected_to receipe_evaluation_url(@receipe_evaluation)
  end

  test "should destroy receipe_evaluation" do
    assert_difference('ReceipeEvaluation.count', -1) do
      delete receipe_evaluation_url(@receipe_evaluation)
    end

    assert_redirected_to receipe_evaluations_url
  end
end
