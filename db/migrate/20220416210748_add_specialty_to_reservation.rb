class AddSpecialtyToReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :specialty, foreign_key: true, index: true
  end
end
