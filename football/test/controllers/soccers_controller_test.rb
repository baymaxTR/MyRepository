require 'test_helper'

class SoccersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get soccers_new_url
    assert_response :success
  end

  test "should get create" do
    get soccers_create_url
    assert_response :success
  end

  test "should get update" do
    get soccers_update_url
    assert_response :success
  end

  test "should get edit" do
    get soccers_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get soccers_destroy_url
    assert_response :success
  end

  test "should get index" do
    get soccers_index_url
    assert_response :success
  end

  test "should get show" do
    get soccers_show_url
    assert_response :success
  end

end
