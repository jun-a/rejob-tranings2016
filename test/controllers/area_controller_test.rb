require 'test_helper'

class AreaControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
