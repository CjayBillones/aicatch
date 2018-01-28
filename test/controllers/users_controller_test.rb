require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  test "should redirect to login page when accessing users new page by public user" do
    get create_user_path
    assert_redirected_to login_path
  end

end
