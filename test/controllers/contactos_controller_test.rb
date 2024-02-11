require "test_helper"

class ContactosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contactos_new_url
    assert_response :success
  end

  test "should get create" do
    get contactos_create_url
    assert_response :success
  end
end
