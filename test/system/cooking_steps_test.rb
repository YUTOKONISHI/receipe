require "application_system_test_case"

class CookingStepsTest < ApplicationSystemTestCase
  setup do
    @cooking_step = cooking_steps(:one)
  end

  test "visiting the index" do
    visit cooking_steps_url
    assert_selector "h1", text: "Cooking Steps"
  end

  test "creating a Cooking step" do
    visit cooking_steps_url
    click_on "New Cooking Step"

    fill_in "Description", with: @cooking_step.description
    fill_in "Image Path", with: @cooking_step.image_path
    fill_in "Number", with: @cooking_step.number
    fill_in "Receipe", with: @cooking_step.receipe_id
    click_on "Create Cooking step"

    assert_text "Cooking step was successfully created"
    click_on "Back"
  end

  test "updating a Cooking step" do
    visit cooking_steps_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cooking_step.description
    fill_in "Image Path", with: @cooking_step.image_path
    fill_in "Number", with: @cooking_step.number
    fill_in "Receipe", with: @cooking_step.receipe_id
    click_on "Update Cooking step"

    assert_text "Cooking step was successfully updated"
    click_on "Back"
  end

  test "destroying a Cooking step" do
    visit cooking_steps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cooking step was successfully destroyed"
  end
end
