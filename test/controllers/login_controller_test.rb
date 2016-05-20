require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
