class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :identification, limit: 50
      t.string :first_name, limit: 200
      t.string :last_name, limit: 20
      t.date :birth_date
      t.string :sex, limit: 10
      t.string :email, limit: 200
      t.string :phone, limit: 50
      t.text :address

      t.timestamps
    end
  end
end
