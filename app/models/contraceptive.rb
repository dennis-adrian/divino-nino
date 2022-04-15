class Contraceptive < ApplicationRecord
  belongs_to :contraceptive_type
  belongs_to :patient
end
