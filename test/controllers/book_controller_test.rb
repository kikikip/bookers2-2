require "test_helper"

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get new," do
    get book_new,_url
    assert_response :success
  end

  test "should get index," do
    get book_index,_url
    assert_response :success
  end

  test "should get show" do
    get book_show_url
    assert_response :success
  end
end
