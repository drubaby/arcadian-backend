class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state
  has_many :location_machines
  has_many :machine_issues, through: :location_machines

end
