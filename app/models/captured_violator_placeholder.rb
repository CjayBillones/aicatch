class CapturedViolatorPlaceholder < ApplicationRecord

  validates_uniqueness_of :license_plate_text, scope: [:capture_date, :violation, :location, :car_image_filename, :license_plate_image_filename]

  def self.filter_locations(filter)
    where(location: filter)
  end

end
