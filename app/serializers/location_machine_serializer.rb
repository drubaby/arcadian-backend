class LocationMachineSerializer < ActiveModel::Serializer
  belongs_to :location
  has_one :machine
  has_many :machine_issues
end
