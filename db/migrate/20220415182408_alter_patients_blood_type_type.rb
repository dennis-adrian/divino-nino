class AlterPatientsBloodTypeType < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :blood_type

    change_table :patients do |t|
      t.enum :blood_type, enum_type: :blood_type
    end
  end
end
