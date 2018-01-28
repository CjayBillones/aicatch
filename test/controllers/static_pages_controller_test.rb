require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to login page when accessing live page by public user" do
    get live_url
    assert_redirected_to  login_path
  end

  test "should redirect to login page when accessing single live page by public user" do
    get live_single_view_url
    assert_redirected_to login_path
  end

  test "should redirect to login page when accessing traffic_violations page by public user" do
    get traffic_violations_url
    assert_redirected_to login_path
  end

  test "should redirect to login page when accessing reports page by public user" do
    get reports_url
    assert_redirected_to login_path
  end

end
