class CapturedViolatorsController < ApplicationController

  def show
    @violator = CapturedViolator.find(params[:id])
  end

  def encode_license_plate
    #@violator = CapturedViolator.find(params[:id])
    #@violator.update!(license_plate_text: params[:license_plate_text])

    @captured_violator = CapturedViolator.create!(captured_violator_params)

    if @captured_violator.save
      capture_year = @captured_violator.raw_image_orig_path[0..3]
      capture_month = @captured_violator.raw_image_orig_path[4..5]
      capture_day = @captured_violator.raw_image_orig_path[6..7]
      capture_hour = @captured_violator.raw_image_orig_path[9..10]
      capture_minute = @captured_violator.raw_image_orig_path[11..12]
      capture_second = @captured_violator.raw_image_orig_path[13..14]
      capture_date = "#{capture_year}-#{capture_month}-#{capture_day} #{capture_hour}:#{capture_minute}:#{capture_second}"
      @captured_violator.update!(capture_date: capture_date)

      car_image_path = "#{Rails.root}/public/MASTER/IMAGES/#{@captured_violator.raw_image_orig_path}"
      car_image_file = File.new(car_image_path)

      license_plate_image_path = "#{Rails.root}/public/MASTER/PLATES/#{@captured_violator.license_plate_image_orig_path}"
      license_plate_image_file = File.new(license_plate_image_path)  

      @captured_violator.image_evidences.create(capture_year: capture_year,
                                                capture_month: capture_month,
                                                capture_day: capture_day,
                                                capture_hour: capture_hour,
                                                capture_minute: capture_minute,
                                                capture_second: capture_second,
                                                image: car_image_file)

      @captured_violator.image_evidences.create(capture_year: capture_year,
                                                capture_month: capture_month,
                                                capture_day: capture_day,
                                                capture_hour: capture_hour,
                                                capture_minute: capture_minute,
                                                capture_second: capture_second,
                                                image: license_plate_image_file)
    end

    #@car_image_file_name = params[:car_image_file_name]
    #@license_plate_image_file_name = params[:license_plate_image_file_name]
    #@capture_year = @car_image_file_name[0..3]
    #@capture_month = @car_image_file_name[4..5]
    #@capture_day = @car_image_file_name[6..7]
    #@capture_hour = @car_image_file_name[9..10]
    #@capture_minute = @car_image_file_name[11..12]
    #@capture_second = @car_image_file_name[13..14]
    #@capture_date = "#{@capture_year}-#{@capture_month}-#{@capture_day} #{@capture_hour}:#{@capture_minute}:#{@capture_second}"
    #@violator = CapturedViolator.create!(capture_date: @capture_date, 
    #                                    violation: "Number Coding", 
    #                                    location: "Cam 1", 
    #                                    penalty_amount: "500.00", 
    #                                    license_plate_text: params[:license_plate_text], 
    #                                    raw_image_orig_path: @car_image_file_name, 
    #                                    license_plate_image_orig_path: @license_plate_image_file_name)
    redirect_to traffic_violations_path
  end

  private
    def captured_violator_params
      params.require(:captured_violator).permit(:violation, :location, :penalty_amount, :license_plate_text, :raw_image_orig_path, :license_plate_image_orig_path)
    end

end
