require 'test_helper'

class CourseControllerTest < ActionDispatch::IntegrationTest
  test "should get new_hangout" do
    get course_new_hangout_url
    assert_response :success
  end

  test "should get create_hangout" do
    get course_create_hangout_url
    assert_response :success
  end

  test "should get show_hangout" do
    get course_show_hangout_url
    assert_response :success
  end

  test "should get index_hangout" do
    get course_index_hangout_url
    assert_response :success
  end

  test "should get edit_hangout" do
    get course_edit_hangout_url
    assert_response :success
  end

  test "should get update_hangout" do
    get course_update_hangout_url
    assert_response :success
  end

  test "should get destroy_hangout" do
    get course_destroy_hangout_url
    assert_response :success
  end

end
