class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state
  has_many :location_machines
  has_many :machines, through: :location_machines
end
