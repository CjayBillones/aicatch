class CapturedViolator < ApplicationRecord

  before_save :upcase_license_plate_text

  has_many :offenses
  has_many :violations, :through => :offenses

  validates :license_plate_text, uniqueness: { case_sensitive: false }

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |captured_violator|
        csv << captured_violator.attributes.values_at(*column_names)
      end
    end
  end

  private

  def upcase_license_plate_text
    self.license_plate_text = license_plate_text.upcase
  end
end
