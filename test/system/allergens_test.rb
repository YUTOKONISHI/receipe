require "application_system_test_case"

class AllergensTest < ApplicationSystemTestCase
  setup do
    @allergen = allergens(:one)
  end

  test "visiting the index" do
    visit allergens_url
    assert_selector "h1", text: "Allergens"
  end

  test "creating a Allergen" do
    visit allergens_url
    click_on "New Allergen"

    fill_in "Name", with: @allergen.name
    click_on "Create Allergen"

    assert_text "Allergen was successfully created"
    click_on "Back"
  end

  test "updating a Allergen" do
    visit allergens_url
    click_on "Edit", match: :first

    fill_in "Name", with: @allergen.name
    click_on "Update Allergen"

    assert_text "Allergen was successfully updated"
    click_on "Back"
  end

  test "destroying a Allergen" do
    visit allergens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allergen was successfully destroyed"
  end
end
