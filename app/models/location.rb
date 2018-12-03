class Location < ApplicationRecord
  has_many :location_machines
  has_many :machines, through: :location_machines
  has_many :machine_issues, through: :location_machines
  # belongs_to :user

end
