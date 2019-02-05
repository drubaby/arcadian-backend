class MachineType < ApplicationRecord
  has_many :machines
  # has_many :locations, through: :location_machines
end
