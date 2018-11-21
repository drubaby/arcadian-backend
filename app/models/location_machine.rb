class LocationMachine < ApplicationRecord
  belongs_to :location
  belongs_to :machine
  has_many :machine_issues
end
