require 'test_helper'

class CompleteControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
