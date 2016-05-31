require 'test_helper'

class UserThControllerTest < ActionController::TestCase
  test "should get update" do
    get :update
    assert_response :success
  end

end
