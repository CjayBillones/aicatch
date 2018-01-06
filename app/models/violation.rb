class Violation < ApplicationRecord

  has_many :offenses
  has_one :captured_violators, :through =>:offenses

end
