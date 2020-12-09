require 'test_helper'

class HomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_page_home_url
    assert_response :success
  end

  test "should get faculty" do
    get home_page_faculty_url
    assert_response :success
  end

  test "should get student" do
    get home_page_student_url
    assert_response :success
  end

end
