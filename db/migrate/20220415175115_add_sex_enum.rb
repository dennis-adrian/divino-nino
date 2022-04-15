class AddSexEnum < ActiveRecord::Migration[7.0]
  def change
    create_enum :sex, ["male", "female", "non_binary"]
  end
end
