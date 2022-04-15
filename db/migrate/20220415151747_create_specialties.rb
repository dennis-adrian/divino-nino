class CreateSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :specialties do |t|
      t.string :name, limit: 200

      t.timestamps
    end
  end
end
