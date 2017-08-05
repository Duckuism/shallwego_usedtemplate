require 'test_helper'

class SupportControllerTest < ActionDispatch::IntegrationTest
  test "should get faq_new" do
    get support_new_url
    assert_response :success
  end

  test "should get create" do
    get support_create_url
    assert_response :success
  end

  test "should get foreigner_detail" do
    get support_index_url
    assert_response :success
  end

  test "should get foreigner_list" do
    get support_show_url
    assert_response :success
  end

  test "should get course_edit" do
    get support_edit_url
    assert_response :success
  end

  test "should get update" do
    get support_update_url
    assert_response :success
  end

  test "should get delete" do
    get support_delete_url
    assert_response :success
  end

end
