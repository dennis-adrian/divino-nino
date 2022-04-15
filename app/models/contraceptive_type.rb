class ContraceptiveType < ApplicationRecord
  has_many :contraceptive
  has_many :patients, through: :contraceptive
end
