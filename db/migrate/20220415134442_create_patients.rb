class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :identification, limit: 50
      t.string :first_name, limit: 200
      t.string :last_name, limit: 20
      t.date :birth_date
      t.string :sex, limit: 10
      t.string :email, limit: 200
      t.string :phone, limit: 50
      t.text :address
      t.string :blood_type, limit: 20
      t.integer :weight
      t.integer :height
      t.boolean :is_pregnant
      t.date :menstruation_date
      t.boolean :has_menopause
      t.boolean :has_reservation
      t.date :last_medical_appointment

      t.timestamps
    end
  end
end
