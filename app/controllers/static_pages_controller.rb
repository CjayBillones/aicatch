class StaticPagesController < ApplicationController
  require 'will_paginate/array'
  
  def live
  
  end

  def single_live
    #render plain: params[:camera].inspect
    @source = params[:src]
    @camera = params[:camera]
    @all_captured_violators = CapturedViolator.all
  end

  def traffic_violations
    @captured_violator_placeholders = CapturedViolatorPlaceholder.where(encoded: false).paginate(:page => params[:page], :per_page => 20)
    @all_captured_violators = CapturedViolator.where(license_plate_text: nil).paginate(:page => params[:page], :per_page => 20)
    @car_image_files = Dir.glob("#{Rails.root}/public/MASTER/IMAGES/*").sort.paginate(:page => params[:page], :per_page => 20)
    @license_plate_image_files = Dir.glob("#{Rails.root}/public/MASTER/PLATES/*").sort.paginate(:page => params[:page], :per_page => 20)
  end

  def reports
    @all_captured_violators = Offense.all
    
    respond_to do |format|
      format.html
      #format.csv { send_data @all_captured_violators.to_csv}
      #format.xls #{ send_data @all_captured_violators.to_csv(col_sep: "\t")}
    end
  end

end
