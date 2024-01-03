require "application_system_test_case"

class PartsTest < ApplicationSystemTestCase
  setup do
    @part = parts(:one)
  end

  test "visiting the index" do
    visit parts_url
    assert_selector "h1", text: "Parts"
  end

  test "should create part" do
    visit parts_url
    click_on "New part"

    fill_in "Name", with: @part.name
    fill_in "Paid", with: @part.paid
    fill_in "Part type", with: @part.part_type
    fill_in "Retail", with: @part.retail
    fill_in "Url", with: @part.url
    click_on "Create Part"

    assert_text "Part was successfully created"
    click_on "Back"
  end

  test "should update Part" do
    visit part_url(@part)
    click_on "Edit this part", match: :first

    fill_in "Name", with: @part.name
    fill_in "Paid", with: @part.paid
    fill_in "Part type", with: @part.part_type
    fill_in "Retail", with: @part.retail
    fill_in "Url", with: @part.url
    click_on "Update Part"

    assert_text "Part was successfully updated"
    click_on "Back"
  end

  test "should destroy Part" do
    visit part_url(@part)
    click_on "Destroy this part", match: :first

    assert_text "Part was successfully destroyed"
  end
end
