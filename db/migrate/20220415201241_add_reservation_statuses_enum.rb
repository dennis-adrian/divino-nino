class AddReservationStatusesEnum < ActiveRecord::Migration[7.0]
  def change
    create_enum :reservation_statuses, ["pending", "confirmed", "cancelled"]
  end
end
