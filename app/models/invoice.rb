class Invoice < ApplicationRecord
  belongs_to :client
  belongs_to :reservation
  has_one :patient, through: :reservations
end
