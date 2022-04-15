class Specialty < ApplicationRecord
  has_many :doctor_specialties
  has_many :offices
  has_many :schedules
  has_many :doctors, through: :doctor_specialties
end
