class Machine < ApplicationRecord
  belongs_to :location
  belongs_to :user
  belongs_to :machine_type
  has_many :machine_issues
end
