require 'test_helper'

class OffensesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @admin = users(:admin)
    @aicatch = users(:aicatch)
    @operator = users(:operator)
    @offense = offenses(:offense_one)    
  end

  test "should redirect reports page (offenses#index) to login page when not logged in" do
    get reports_path
    assert_redirected_to login_path
  end

  test "should redirect destroy to login page when not logged in" do
    delete offense_path(@offense)
    assert_redirected_to login_path
  end

end
