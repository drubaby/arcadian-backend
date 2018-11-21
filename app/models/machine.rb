class Machine < ApplicationRecord
  has_many :location_machines
  has_many :locations, through: :location_machines
  # belongs_to :user
  # belongs_to :location_machine
  # has_many :machine_issues
end
