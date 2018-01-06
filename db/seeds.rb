# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

violations = {"Number Coding" => {"first" => "300", "second" => "300", "third" => "300"}, "Illegal Loading" => {"first" => "150", "second" => "150", "third" => "150"}}
violations.each_pair do |key, value|
  Violation.create!(name: key, first_offense_penalty: value["first"], second_offense_penalty: value["second"], third_offense_penalty: value["third"])
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