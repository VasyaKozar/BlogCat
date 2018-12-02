require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get ingex" do
    get pages_ingex_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

end
