class Machine < ApplicationRecord
  belongs_to: user
  belongs_to: location
  has_many: machine_issues
end
