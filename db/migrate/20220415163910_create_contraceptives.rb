class CreateContraceptives < ActiveRecord::Migration[7.0]
  def change
    create_table :contraceptives do |t|
      t.text :observations
      t.references :contraceptive_type, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
