class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date_made
      t.references :patient, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.references :reservation_fee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
