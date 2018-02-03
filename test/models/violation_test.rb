require 'test_helper'

class ViolationTest < ActiveSupport::TestCase

  def setup
    @violation_with_fixed_penalty = Violation.new(name: "Sample Violation 1",
                               first_offense_penalty: 300.00,
                               second_offense_penalty: 300.00,
                               third_offense_penalty: 300.00)
    @violation_without_fixed_penalty = Violation.new(name: "Sample Violation 2",
                                                     first_offense_penalty: 100.00,
                                                     second_offense_penalty: 200.00,
                                                     third_offense_penalty: 300.00)
  end

  test "should be valid" do
    assert @violation_with_fixed_penalty.valid?
  end

  test "should have a unique name" do
    duplicate_violation = @violation_with_fixed_penalty.dup
    duplicate_violation.name = @violation_with_fixed_penalty.name.upcase
    @violation_with_fixed_penalty.save
    assert_not duplicate_violation.valid?
  end

  test "violation's (with similar penalties) fixed_penalty should not be 0" do
    @violation_with_fixed_penalty.save
    assert_not_equal 0.0, @violation_with_fixed_penalty.fixed_penalty.to_f
  end

  test "violation's (with at least one different penalty) fixed_penalty should be 0" do
    @violation_without_fixed_penalty.save
    assert_equal 0, @violation_without_fixed_penalty.fixed_penalty.to_f
  end

end
