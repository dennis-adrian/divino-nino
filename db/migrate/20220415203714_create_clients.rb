class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, limit: 100
      t.string :last_name, limit: 100
      t.string :nit, limit: 50

      t.timestamps
    end
  end
end
