class AddReservationStatusColumn < ActiveRecord::Migration[7.0]
  def change
    change_table :reservations do |t|
      t.enum :status, enum_type: :reservation_statuses, default: "pending", null: false
    end
  end
end
