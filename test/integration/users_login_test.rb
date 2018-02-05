require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:admin)
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { username: "", password: "" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
  end 

  test "login with valid information" do
    get login_path
    post login_path, params: { session: { username: @user.username,
                                          password: 'password'
                                        }
                             }
    assert_redirected_to @user
    follow_redirect!
    assert_select "a[href=?]", logout_path
    assert is_logged_in?
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { username: @user.username,
                                          password: 'password'
                                        }
                             }
    assert_redirected_to @user
    follow_redirect!
    assert_select "a[href=?]", logout_path
    assert is_logged_in?
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to login_path
    delete logout_path
    follow_redirect!
  end

  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_equal assigns(:user).remember_token, cookies['remember_token']
  end

  test "login without remembering" do
    log_in_as(@user, remember_me: '1')
    assert_not_empty cookies['remember_token']
    delete logout_path
    log_in_as(@user, remember_me: '0')
    assert_empty cookies['remember_token']
  end

end
