class LocationMachineSerializer < ActiveModel::Serializer
  attributes :id, :location_id, :machine_id, :machine, :machine_issues, :is_working
  has_one :machine
  has_many :machine_issues
end
