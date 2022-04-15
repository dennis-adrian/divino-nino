class FixEnums < ActiveRecord::Migration[7.0]
  def change
    create_enum :sexes, ["male", "female", "non_binary"]

    create_enum :blood_types, [
      "a_positive",
      "a_negative",
      "b_positive",
      "b_negative",
      "o_positive",
      "o_negative",
      "ab_positive",
      "ab_negative"
    ]

    remove_column :patients, :blood_type
    remove_column :patients, :sex

    change_table :patients do |t|
      t.enum :blood_type, enum_type: :blood_types
    end

    change_table :patients do |t|
      t.enum :sex, enum_type: :sexes, default: "male", null: false
    end
  end
end
