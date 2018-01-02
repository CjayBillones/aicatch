class CapturedViolatorsController < ApplicationController

  def show
    @violator = CapturedViolator.find(params[:id])
  end

end
