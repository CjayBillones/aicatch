class CapturedViolator < ApplicationRecord

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |captured_violator|
        csv << captured_violator.attributes.values_at(*column_names)
      end
    end
  end
end
