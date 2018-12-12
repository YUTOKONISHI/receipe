require "application_system_test_case"

class ReceipeEvaluationsTest < ApplicationSystemTestCase
  setup do
    @receipe_evaluation = receipe_evaluations(:one)
  end

  test "visiting the index" do
    visit receipe_evaluations_url
    assert_selector "h1", text: "Receipe Evaluations"
  end

  test "creating a Receipe evaluation" do
    visit receipe_evaluations_url
    click_on "New Receipe Evaluation"

    fill_in "Rating", with: @receipe_evaluation.rating
    fill_in "Receipe", with: @receipe_evaluation.receipe_id
    fill_in "User", with: @receipe_evaluation.user_id
    click_on "Create Receipe evaluation"

    assert_text "Receipe evaluation was successfully created"
    click_on "Back"
  end

  test "updating a Receipe evaluation" do
    visit receipe_evaluations_url
    click_on "Edit", match: :first

    fill_in "Rating", with: @receipe_evaluation.rating
    fill_in "Receipe", with: @receipe_evaluation.receipe_id
    fill_in "User", with: @receipe_evaluation.user_id
    click_on "Update Receipe evaluation"

    assert_text "Receipe evaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Receipe evaluation" do
    visit receipe_evaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receipe evaluation was successfully destroyed"
  end
end
