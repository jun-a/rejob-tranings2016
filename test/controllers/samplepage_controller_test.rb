require 'test_helper'

class SamplepageControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
