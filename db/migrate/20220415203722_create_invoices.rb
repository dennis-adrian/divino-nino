class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :number, limit: 50
      t.date :creation_date
      t.date :due_date
      t.float :total_cost
      t.text :notes
      t.references :client, null: false, foreign_key: true
      t.references :reservation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
