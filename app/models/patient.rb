class Patient < ApplicationRecord
  has_many :contraceptives
  has_many :contraceptive_types, through: :contraceptives
  
  enum sex: {
    male: "male", female: "female", non_binary: "non_binary"
  }

  enum blood_type: {
    a_positive: "a_positive",
    a_negative: "a_negative",
    b_positive: "b_positive",
    b_negative: "b_negative",
    o_positive: "o_positive",
    o_negative: "o_negative",
    ab_positive: "ab_positive",
    ab_negative: "ab_negative"
  }
end
