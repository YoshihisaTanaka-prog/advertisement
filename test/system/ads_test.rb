require "application_system_test_case"

class AdsTest < ApplicationSystemTestCase
  setup do
    @ad = ads(:one)
  end

  test "visiting the index" do
    visit ads_url
    assert_selector "h1", text: "Ads"
  end

  test "creating a Ad" do
    visit ads_url
    click_on "New Ad"

    fill_in "And url", with: @ad.and_url
    fill_in "Cl image", with: @ad.cl_image
    fill_in "Ios url", with: @ad.ios_url
    fill_in "Pc url", with: @ad.pc_url
    fill_in "Text", with: @ad.text
    fill_in "Title", with: @ad.title
    click_on "Create Ad"

    assert_text "Ad was successfully created"
    click_on "Back"
  end

  test "updating a Ad" do
    visit ads_url
    click_on "Edit", match: :first

    fill_in "And url", with: @ad.and_url
    fill_in "Cl image", with: @ad.cl_image
    fill_in "Ios url", with: @ad.ios_url
    fill_in "Pc url", with: @ad.pc_url
    fill_in "Text", with: @ad.text
    fill_in "Title", with: @ad.title
    click_on "Update Ad"

    assert_text "Ad was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad" do
    visit ads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad was successfully destroyed"
  end
end
