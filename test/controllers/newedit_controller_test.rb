require 'test_helper'

class NeweditControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
