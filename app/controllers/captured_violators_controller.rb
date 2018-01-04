class CapturedViolatorsController < ApplicationController

  def show
    @violator = CapturedViolator.find(params[:id])
  end

  def encode_license_plate
    @violator = CapturedViolator.find(params[:id])
    @violator.update!(license_plate_text: params[:license_plate_text])
    redirect_to traffic_violations_path
  end

end
