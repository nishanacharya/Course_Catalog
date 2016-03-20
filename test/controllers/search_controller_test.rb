require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_index_url
    assert_response :success
  end

  test "should get new" do
    get search_new_url
    assert_response :success
  end

  test "should get edit" do
    get search_edit_url
    assert_response :success
  end

  test "should get create" do
    get search_create_url
    assert_response :success
  end

  test "should get update" do
    get search_update_url
    assert_response :success
  end

  test "should get destroy" do
    get search_destroy_url
    assert_response :success
  end

end
