require "test_helper"

class FilmsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get films_new_url
    assert_response :success
  end

  test "should get index" do
    get films_index_url
    assert_response :success
  end

  test "should get show" do
    get films_show_url
    assert_response :success
  end

  test "should get edit" do
    get films_edit_url
    assert_response :success
  end
end
