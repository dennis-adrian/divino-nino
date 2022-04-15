class CreateDrugs < ActiveRecord::Migration[7.0]
  def change
    create_table :drugs do |t|
      t.string :name, limit: 200
      t.text :description

      t.timestamps
    end
  end
end
