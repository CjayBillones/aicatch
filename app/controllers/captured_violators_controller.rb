class CapturedViolatorsController < ApplicationController

  def show
    @violator = CapturedViolator.find(params[:id])
  end

  def update
    @captured_violator = CapturedViolator.find(params[:id])

    respond_to do |format|
      if @captured_violator.update_attributes(captured_violator_params)
        format.html { redirect_to reports_path}
        format.json { head :ok }
      end
    end
  end

  def encode_license_plate
    @captured_violator_placeholder = CapturedViolatorPlaceholder.find(params[:captured_violator_placeholder][:id])
    @captured_violator = CapturedViolator.find_by_license_plate_text(params[:captured_violator][:license_plate_text].upcase)

    if !@captured_violator
      @captured_violator = CapturedViolator.create(license_plate_text: params[:captured_violator][:license_plate_text])
    end

    @violation = Violation.find_by_name(params[:violation][:name])

    capture_year = params[:offense][:car_image_filename][0..3]
    capture_month = params[:offense][:car_image_filename][4..5]
    capture_day = params[:offense][:car_image_filename][6..7]
    capture_hour = params[:offense][:car_image_filename][9..10]
    capture_minute = params[:offense][:car_image_filename][11..12]
    capture_second = params[:offense][:car_image_filename][13..14]
    capture_date = "#{capture_year}-#{capture_month}-#{capture_day} #{capture_hour}:#{capture_minute}:#{capture_second}"


    @violator_offense = Offense.create(captured_violator_id: @captured_violator.id,
                                       violation_id: @violation.id,
                                       capture_date: capture_date,
                                       car_image_filename: params[:offense][:car_image_filename],
                                       license_plate_image_filename: params[:offense][:license_plate_image_filename],
                                       location: params[:offense][:location],
                                       penalty: "300")

    car_image_path = "#{Rails.root}/public/MASTER/IMAGES/#{@violator_offense.car_image_filename}"
    car_image_file = File.new(car_image_path)

    license_plate_image_path = "#{Rails.root}/public/MASTER/PLATES/#{@violator_offense.license_plate_image_filename}"
    license_plate_image_file = File.new(license_plate_image_path)

    @violator_offense.image_evidences.create(capture_year: capture_year,
                                             capture_month: capture_month,
                                             capture_day: capture_day,
                                             capture_hour: capture_hour,
                                             capture_minute: capture_minute,
                                             capture_second: capture_second,
                                             image: car_image_file)

    @violator_offense.image_evidences.create(capture_year: capture_year,
                                             capture_month: capture_month,
                                             capture_day: capture_day,
                                             capture_hour: capture_hour,
                                             capture_minute: capture_minute,
                                             capture_second: capture_second,
                                             image: license_plate_image_file)

    if @captured_violator_placeholder and @violator_offense and @captured_violator
      @captured_violator_placeholder.update(encoded: true)
    end

    redirect_to traffic_violations_path
  end

  def download_evidences
    require 'zip/zip'
    require 'zip/zipfilesystem'

    @captured_violator = Offense.find(params[:id])
    zip_filename = "#{@captured_violator.capture_date.strftime("%d-%B-%Y-%H-%M-%S")}-#{@captured_violator.location}-#{@captured_violator.violation.name}-#{@captured_violator.captured_violator.license_plate_text}-"
    t = Tempfile.new(request.remote_ip + '-' + zip_filename)

    Zip::ZipOutputStream.open(t.path) do |zos|
      @captured_violator.image_evidences.each do |image_file|
        zos.put_next_entry(image_file.image_file_name)
        zos.print IO.read(image_file.image.path)
      end
    end

    send_file t.path, type: 'application/zip'
    t.close
  end

end
