class StaticPagesController < ApplicationController
  def live
  end

  def traffic_violations
    @number_coding_captured_violators = CapturedViolator.where(violation: "Number Coding")
    @illegal_loading_captured_violators = CapturedViolator.where(violation: "Illegal Loading")
    @all_captured_violators = CapturedViolator.all.paginate(:page => params[:page], :per_page => 20)
  end

  def reports
    @all_captured_violators = CapturedViolator.all
  end
end
