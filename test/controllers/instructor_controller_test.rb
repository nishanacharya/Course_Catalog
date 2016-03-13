require 'test_helper'

class InstructorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instructor_index_url
    assert_response :success
  end

  test "should get new" do
    get instructor_new_url
    assert_response :success
  end

  test "should get edit" do
    get instructor_edit_url
    assert_response :success
  end

  test "should get create" do
    get instructor_create_url
    assert_response :success
  end

  test "should get update" do
    get instructor_update_url
    assert_response :success
  end

  test "should get destroy" do
    get instructor_destroy_url
    assert_response :success
  end

end
