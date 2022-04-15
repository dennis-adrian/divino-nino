class CreateContraceptiveTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :contraceptive_types do |t|
      t.string :name, limit: 100
      t.text :description

      t.timestamps
    end
  end
end
