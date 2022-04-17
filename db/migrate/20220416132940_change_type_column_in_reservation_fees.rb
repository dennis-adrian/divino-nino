class ChangeTypeColumnInReservationFees < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservation_fees, :type, :name
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
