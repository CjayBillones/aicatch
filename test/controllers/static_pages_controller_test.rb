require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get live" do
    get static_pages_live_url
    assert_response :success
  end

  test "should get traffic_violations" do
    get static_pages_traffic_violations_url
    assert_response :success
  end

  test "should get reports" do
    get static_pages_reports_url
    assert_response :success
  end

end
