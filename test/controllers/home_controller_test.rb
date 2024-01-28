require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get proyecto" do
    get home_proyecto_url
    assert_response :success
  end
end
