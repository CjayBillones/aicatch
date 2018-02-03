class StaticPagesController < ApplicationController
  include ApplicationHelper
  require 'will_paginate/array'
  
  before_action :logged_in_user

  def live
  
  end

  def single_live

    #@source = params[:src]
    #@camera = params[:camera]

    @all_captured_violators = CapturedViolatorPlaceholder.all.order('capture_date DESC')
    @live_vehicles = LiveVehicle.all.order('capture_date DESC')

    respond_to do |format|
      format.html
      format.js
    end
  end

  def traffic_violations
    @locations = Location.pluck(:name)
    if params[:location_filter].present?
      @selected_location = params[:location_filter]
      @captured_violator_placeholders = CapturedViolatorPlaceholder.filter_locations(params[:location_filter]) if params[:location_filter].present?
    else
      @captured_violator_placeholders = CapturedViolatorPlaceholder.where(encoded: false)
    end
    @captured_violator_placeholders = @captured_violator_placeholders.paginate(:page => params[:page], :per_page => 20)
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
