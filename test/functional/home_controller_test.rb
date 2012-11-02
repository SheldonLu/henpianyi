require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get fushi" do
    get :fushi
    assert_response :success
  end

end
