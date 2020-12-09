require "application_system_test_case"

class StudentGroupsTest < ApplicationSystemTestCase
  setup do
    @student_group = student_groups(:one)
  end

  test "visiting the index" do
    visit student_groups_url
    assert_selector "h1", text: "Student Groups"
  end

  test "creating a Student group" do
    visit student_groups_url
    click_on "New Student Group"

    fill_in "Group name", with: @student_group.group_name
    click_on "Create Student group"

    assert_text "Student group was successfully created"
    click_on "Back"
  end

  test "updating a Student group" do
    visit student_groups_url
    click_on "Edit", match: :first

    fill_in "Group name", with: @student_group.group_name
    click_on "Update Student group"

    assert_text "Student group was successfully updated"
    click_on "Back"
  end

  test "destroying a Student group" do
    visit student_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student group was successfully destroyed"
  end
end
