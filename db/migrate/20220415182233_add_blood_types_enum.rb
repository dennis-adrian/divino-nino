class AddBloodTypesEnum < ActiveRecord::Migration[7.0]
  def change
    create_enum :blood_type, [
      "a_positive",
      "a_negative",
      "b_positive",
      "b_negative",
      "o_positive",
      "o_negative",
      "ab_positive",
      "ab_negative"
    ]
  end
end
