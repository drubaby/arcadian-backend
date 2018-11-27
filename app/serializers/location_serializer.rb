class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state
  has_many :location_machines

end
