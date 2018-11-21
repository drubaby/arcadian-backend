class Location < ApplicationRecord
  has_many :machines, through: :location_machines
  # belongs_to :user

end
