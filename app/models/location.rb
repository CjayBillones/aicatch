class Location < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
end
