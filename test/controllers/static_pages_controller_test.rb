require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get live" do
    get live_url
    assert_response :success
  end

  test "should get single live" do
    get live_single_view_url
    assert_response :success
  end

  test "should get traffic_violations" do
    get traffic_violations_url
    assert_response :success
  end

  test "should get reports" do
    get reports_url
    assert_response :success
  end

end
