class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :city, :state
  has_many :machines
  has_many :machine_issues, through: :machines

end
