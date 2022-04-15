class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.boolean :is_busy
      t.references :doctor, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true
      t.references :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
