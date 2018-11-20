class Location < ApplicationRecord
  has_many: machines
  belongs_to: user

end
