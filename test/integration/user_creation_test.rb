require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest

  def setup
    @admin = users(:admin)
  end

  test "invalid create user information" do
    log_in_as(@admin)
    get create_user_path
    assert_no_difference 'User.count' do
    post users_path, params: { user: { name: "",
                                       username: "",
                                       password: "pass",
                                       password_confirmation: "word",
                                       admin: false,
                                       role: "Operator",
                            }}
    end
    assert_template 'users/new'
    assert_select  'div.ui.error.message.closable'
  end

  test "valid create user information" do
    log_in_as(@admin)
    get create_user_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "Operator 1",
                                         username: "operator_one",
                                         password: "password",
                                         password_confirmation: "password",
                                         admin: false,
                                         role: "Operator"
                                         }}
    end
    follow_redirect!
  end

end
