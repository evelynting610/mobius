require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get rankings green" do
    get rankings_green_path
    assert_response :success
  end

  test "should get rankings blue" do
    get rankings_blue_path
    assert_response :success
  end
end
