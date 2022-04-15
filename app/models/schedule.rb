class Schedule < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
  belongs_to :office
end
