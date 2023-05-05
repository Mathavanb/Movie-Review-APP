require "application_system_test_case"

class ReviewpgsTest < ApplicationSystemTestCase
  setup do
    @reviewpg = reviewpgs(:one)
  end

  test "visiting the index" do
    visit reviewpgs_url
    assert_selector "h1", text: "Reviewpgs"
  end

  test "creating a Reviewpg" do
    visit reviewpgs_url
    click_on "New Reviewpg"

    fill_in "Homepg", with: @reviewpg.homepg_id
    fill_in "Rating", with: @reviewpg.rating
    fill_in "Review", with: @reviewpg.review
    click_on "Create Reviewpg"

    assert_text "Reviewpg was successfully created"
    click_on "Back"
  end

  test "updating a Reviewpg" do
    visit reviewpgs_url
    click_on "Edit", match: :first

    fill_in "Homepg", with: @reviewpg.homepg_id
    fill_in "Rating", with: @reviewpg.rating
    fill_in "Review", with: @reviewpg.review
    click_on "Update Reviewpg"

    assert_text "Reviewpg was successfully updated"
    click_on "Back"
  end

  test "destroying a Reviewpg" do
    visit reviewpgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reviewpg was successfully destroyed"
  end
end
