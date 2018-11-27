class LocationMachineSerializer < ActiveModel::Serializer
  attributes :location_id, :machine, :machine_issues, :is_working
  has_one :machine
  has_many :machine_issues
end
