class Patient < ApplicationRecord
  has_many :contraceptives
  has_many :contraceptive_types, through: :contraceptives
  
  enum sex: {
    male: "male", female: "female", non_binary: "non_binary"
  }
end
