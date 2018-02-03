class LiveVehicle < ApplicationRecord

  validates_uniqueness_of :license_plate_text, scope: [:capture_date, :violation, :location, :car_image_filename, :license_plate_image_filename]


end
