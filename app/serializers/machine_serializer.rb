class MachineSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :location_id,
  :location_name,
  :machine_type,
  :machine_issues,
  :is_working
  #, :updated_at
  has_one :machine_type
  has_many :machine_issues

  def name
    self.object.machine_type.name
  end

  def location_name
    loc_mac = self.object
    location = Location.find(loc_mac.location_id)
    location.name
  end


end
