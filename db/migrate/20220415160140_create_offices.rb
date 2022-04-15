class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.string :room, limit: 10
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
