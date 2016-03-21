require 'test_helper'

class EnrollmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get enrollment_index_url
    assert_response :success
  end

  test "should get new" do
    get enrollment_new_url
    assert_response :success
  end

  test "should get edit" do
    get enrollment_edit_url
    assert_response :success
  end

  test "should get create" do
    get enrollment_create_url
    assert_response :success
  end

  test "should get update" do
    get enrollment_update_url
    assert_response :success
  end

  test "should get destroy" do
    get enrollment_destroy_url
    assert_response :success
  end

end
