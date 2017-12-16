# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

violations = ["Number Coding", "Illegal Loading"]
locations = ["EDSA - Balintawak", "EDSA - Quezon Ave", "EDSA - Santolan", "EDSA - White Plains", "EDSA - Ortigas Flyover", "EDSA - Megamall", "EDSA - Reliance", "EDSA - Guadalupe", "EDSA - Pasay Road"]

def generate_rand_time()
  if Time.now.strftime("%A") == "Saturday"
    time = rand_time(5.days.ago, 1.day.ago) 
  elsif Time.now.strftime("%A") == "Sunday"
    time = rand_time(6.days.ago, 2.days.ago)
  end
end

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end

for i in 0..101 do
  violation = violations[rand(0..1)]
  time = (violation == "Number Coding") ? generate_rand_time() : rand_time(rand(1..7).days.ago)
  location = locations[rand(0..8)]
  penalty_amount = (violation == "Number Coding") ? "500.00" : "150.00"
  captured_violator = CapturedViolator.create(capture_date: time, raw_image: "image#{i.to_s}", license_plate_image: "plate#{i.to_s}", violation: violation, location: location, penalty_amount: penalty_amount)
end