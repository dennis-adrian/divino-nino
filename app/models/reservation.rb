class Reservation < ApplicationRecord
  belongs_to :patient
  belongs_to :schedule
  belongs_to :reservation_fee
  belongs_to :specialty

  enum reservation_statuses: {
    pending: "pending",
    confirmed: "confirmed",
    cancelled: "cancelled"
  }
end
