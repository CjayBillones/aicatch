require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @admin = users(:admin)
    @aicatch = users(:aicatch)
    @operator = users(:operator)
  end
  
  test "should redirect to login page when accessing users new page by public user" do
    get create_user_path
    assert_redirected_to login_path
  end

  test "should redirect edit when not logged in" do
    get edit_user_path(@operator)
    assert_not flash.empty?
    assert_redirected_to login_path
  end

  test "should redirect update when not logged in" do
    patch user_path(@operator), params: { user: { name: @operator.name,
                                                  username: @operator.username,
                                                }}
    assert_not flash.empty?
    assert_redirected_to login_path
  end

  test "should redirect edit when logged in as wrong user" do
    log_in_as(@admin)
    get edit_user_path(@operator)
    assert_not flash.empty?
    assert_redirected_to @admin
  end

  test "should redirect update when loggedi n as wrong user" do
    log_in_as(@admin)
    patch user_path(@operator), params: { user: { name: @operator.name,
                                                  username: @operator.username
                                                }}
    assert_not flash.empty?
    assert_redirected_to @admin
  end

end
