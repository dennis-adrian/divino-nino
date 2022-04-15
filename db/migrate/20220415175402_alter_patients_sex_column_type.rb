class AlterPatientsSexColumnType < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :sex

    change_table :patients do |t|
      t.enum :sex, enum_type: :sex, default: "male", null: false
    end
  end
end
