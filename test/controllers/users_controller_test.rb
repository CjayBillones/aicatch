require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @admin = users(:admin)
    @aicatch = users(:aicatch)
    @operator = users(:operator)
  end
  
  test "should redirect new to login page when not logged in" do
    get create_user_path
    assert_not flash.empty?
    assert_redirected_to login_path
  end

  test "should redirect create to login page when not logged in" do
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "Operator 1",
                                         username: "operator_one",
                                         password: "password",
                                         password_confirmation: "password",
                                         admin: false,
                                         role: "Operator"
                                         }}
    end
    assert_redirected_to login_path
  end

  test "should redirect new to user page when not logged in as admin" do
    log_in_as(@operator)
    get create_user_path
    assert_not flash.empty?
    assert_redirected_to @operator
  end

  test "should redirect create to user page when not logged in as admin" do
    log_in_as(@operator)
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "Operator 1",
                                         username: "operator_one",
                                         password: "password",
                                         password_confirmation: "password",
                                         admin: false,
                                         role: "Operator"
                                         }}
    end
    assert_redirected_to @operator
  end

  test "should create user if logged in as admin" do
    log_in_as(@admin)
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "Operator 1",
                                         username: "operator_one",
                                         password: "password",
                                         password_confirmation: "password",
                                         admin: false,
                                         role: "Operator"
                                         }}
    end
    assert_redirected_to @admin
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

  test "successful edit" do
    log_in_as(@operator)
    name = "Operator Name"
    username = "operator_name"
    patch user_path(@operator), params: { user: { name: name,
                                                  username: username,
                                                  password: "",
                                                  password_confirmation: ""
                                                }}
    assert_not flash.empty?
    assert_redirected_to @operator
    @operator.reload
    assert_equal name, @operator.name
    assert_equal username, @operator.username
  end

  test "should not allow admin attribute to be edited via the web" do
    log_in_as(@operator)
    assert_not @operator.admin?
    patch user_path(@operator), params: { user: { password: "",
                                                  password_confirmation: "",
                                                  admin: true
                                                }}
    assert_not @operator.reload.admin?
  end

end
