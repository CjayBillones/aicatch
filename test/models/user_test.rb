require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @admin_user = User.new(username: "operator_head_one", 
                           name: "Operator Head 1",
                           email: "operator@head.com", 
                           password: "password", 
                           password_confirmation: "password",
                           admin: true, 
                           role: "Operator Head")
    @operator_user = User.new(username: "operator_one",
                              name: "Operator 1",
                              email: "operator@example.com",
                              password: "password",
                              password_confirmation: "password",
                              admin: false,
                              role: "Operator")
  end

  test "should be valid" do
    assert @admin_user.valid?
    assert @operator_user.valid?
  end

  test "username should be present" do
    @admin_user.username = "      "
    assert_not @admin_user.valid?
  end

  test "username should not be too long" do
    @admin_user.username = "a" * 101
    assert_not @admin_user.valid?
  end

  test "usernames should be unique" do
    duplicate_operator_user = @operator_user.dup
    duplicate_operator_user.username = @operator_user.username.upcase
    @operator_user.save
    assert_not duplicate_operator_user.valid?
  end

  test "name should be present" do
    @admin_user.name = "     "
    assert_not @admin_user.valid?
  end

  test "name should not be too long" do
    @admin_user.name = "a" * 101
    assert_not @admin_user.valid?
  end
  '''
  test "email should be present" do
    @admin_user.email = "     "
    assert_not @admin_user.valid?
  end

  test "email should not be too long" do
    @admin_user.email = "a" * 244 + "@example.com"
    assert_not @admin_user.valid?
  end

  test "email validatoin should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]    
    valid_addresses.each do |valid_address|
      @operator_user.email = valid_address
      assert @operator_user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @admin_user.email = invalid_address
      assert_not @admin_user.valid?, "#{invalid_address.inspect} should be invalid"
    end    
  end

  test "email addresses should be unique" do
    duplicate_operator_user = @operator_user.dup
    duplicate_operator_user.email = @operator_user.email.upcase
    @operator_user.save
    assert_not duplicate_operator_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.com"
    @admin_user.email = mixed_case_email
    @admin_user.save
    assert_equal mixed_case_email.downcase, @admin_user.reload.email
  end
  '''
  test "password should be present (non-blank)" do
    @admin_user.password = @admin_user.password_confirmation = " " * 6
    assert_not @admin_user.valid?
  end

  test "password should have a minimum length" do
    @admin_user.password = @admin_user.password_confirmation = "a" * 5
    assert_not @admin_user.valid?
  end

end
