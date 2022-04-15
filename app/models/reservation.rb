class Reservation < ApplicationRecord
  belongs_to :patient
  belongs_to :schedule
  belongs_to :reservation_fee

  enum reservation_statuses: {
    pending: "pending"
    confirmed: "confirmed"
    cancelled: "cancelled"
  }
end
