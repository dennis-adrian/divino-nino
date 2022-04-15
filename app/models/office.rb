class Office < ApplicationRecord
  belongs_to :specialty
  has_many :schedules
end
