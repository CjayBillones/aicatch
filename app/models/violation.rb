class Violation < ApplicationRecord

  before_save :set_fixed_penalty

  has_many :offenses
  has_one :captured_violators, :through =>:offenses

  validates :name, uniqueness: { case_sensitive: false }

  private

    def set_fixed_penalty
      if self.first_offense_penalty == self.second_offense_penalty and self.second_offense_penalty == self.third_offense_penalty
        self.fixed_penalty = first_offense_penalty
      end
    end

end
