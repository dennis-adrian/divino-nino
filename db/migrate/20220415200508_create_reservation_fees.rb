class CreateReservationFees < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_fees do |t|
      t.string :type, limit: 50
      t.float :cost
      t.text :description

      t.timestamps
    end
  end
end
