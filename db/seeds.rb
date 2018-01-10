require 'csv'

locations = ["Cam 1", "Cam 2", "Cam 3"]
locations.each do |x|
  location = Location.create(name: x) if !Location.find_by_name(x)
end

violations = {"Number Coding" => {"first" => "300", "second" => "300", "third" => "300"}, "Illegal Loading" => {"first" => "150", "second" => "150", "third" => "150"}}
violations.each_pair do |key, value|
  Violation.create!(name: key, first_offense_penalty: value["first"], second_offense_penalty: value["second"], third_offense_penalty: value["third"]) if !Violation.find_by_name(key)
end

captured_violator_placeholders_csv = File.read(Rails.root.join('lib','seeds','captured_violator_placeholders.csv'))
csv = CSV.parse(captured_violator_placeholders_csv, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  captured_violator_placholder = CapturedViolatorPlaceholder.create!(capture_date: row['Capture Date'],
                                                                     license_plate_text: row['License Plate Text'],
                                                                     car_image_filename: row['Car Image Filename'],
                                                                     license_plate_image_filename: row['License Plate Image Filename'],
                                                                     video_filename: row['Video Filename'],
                                                                     violation: row['Violation'],
                                                                     location: Location.find_by_name(row['Location']).name
                                                                    )
end

#def generate_rand_time()
#  if Time.now.strftime("%A") == "Saturday"
#    time = rand_time(5.days.ago, 1.day.ago) 
#  elsif Time.now.strftime("%A") == "Sunday"
#    time = rand_time(6.days.ago, 2.days.ago)
#  else
#    time = Time.now
#  end
#end

#def rand_time(from, to=Time.now)
#  Time.at(rand_in_range(from.to_f, to.to_f))
#end

#def rand_in_range(from, to)
#  rand * (to - from) + from
#end

#for i in 0..101 do
  #violation = violations[rand(0..1)]
#  violation = "Number Coding"
#  time = (violation == "Number Coding") ? generate_rand_time() : rand_time(rand(1..7).days.ago)
  #location = locations[rand(0..8)]
#  location = "Cam 1"
#  penalty_amount = (violation == "Number Coding") ? "500.00" : "150.00"
#  captured_violator = CapturedViolator.create(capture_date: time, raw_image: "image#{i.to_s}", license_plate_image: "plate#{i.to_s}", violation: violation, location: location, penalty_amount: penalty_amount)
#end