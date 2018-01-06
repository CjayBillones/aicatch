class Offense < ApplicationRecord

  belongs_to :captured_violator
  belongs_to :violation

end
