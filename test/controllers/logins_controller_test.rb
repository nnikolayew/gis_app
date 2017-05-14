require 'test_helper'

class LoginsControllerTest < ActionController::TestCase
  test "should get autoriz" do
    get :autoriz
    assert_response :success
  end

end
