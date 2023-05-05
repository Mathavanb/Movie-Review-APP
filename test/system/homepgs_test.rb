require "application_system_test_case"

class HomepgsTest < ApplicationSystemTestCase
  setup do
    @homepg = homepgs(:one)
  end

  test "visiting the index" do
    visit homepgs_url
    assert_selector "h1", text: "Homepgs"
  end

  test "creating a Homepg" do
    visit homepgs_url
    click_on "New Homepg"

    fill_in "Description", with: @homepg.description
    fill_in "Movie name", with: @homepg.movie_name
    fill_in "Release date", with: @homepg.release_date
    click_on "Create Homepg"

    assert_text "Homepg was successfully created"
    click_on "Back"
  end

  test "updating a Homepg" do
    visit homepgs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @homepg.description
    fill_in "Movie name", with: @homepg.movie_name
    fill_in "Release date", with: @homepg.release_date
    click_on "Update Homepg"

    assert_text "Homepg was successfully updated"
    click_on "Back"
  end

  test "destroying a Homepg" do
    visit homepgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Homepg was successfully destroyed"
  end
end
