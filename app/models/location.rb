class Location < ApplicationRecord
  has_many :machines
  # has_many :machines, through: :location_machines
  has_many :machine_issues, through: :machines
  # belongs_to :user

end
