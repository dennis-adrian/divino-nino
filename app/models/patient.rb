class Patient < ApplicationRecord
  has_many :contraceptives
  has_many :contraceptive_types, through: :contraceptives 
end
