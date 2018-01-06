class Offense < ApplicationRecord

  belongs_to :captured_violator
  belongs_to :violation

  has_many :image_evidences, :dependent => :destroy

end
