class Machine < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :user, optional: true
  belongs_to :machine_type
  has_many :machine_issues
end
