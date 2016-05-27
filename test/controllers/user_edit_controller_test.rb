require 'test_helper'

class UserEditControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
