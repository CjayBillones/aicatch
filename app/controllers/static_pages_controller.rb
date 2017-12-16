class StaticPagesController < ApplicationController
  def live
  end

  def traffic_violations
    @number_coding_captured_violators = CapturedViolator.where(violation: "Number Coding")
    @illegal_loading_captured_violators = CapturedViolator.where(violation: "Illegal Loading")
    @all_captured_violators = @number_coding_captured_violators + @illegal_loading_captured_violators
  end

  def reports
  end
end
