# class LocationMachineSerializer < ActiveModel::Serializer
#   attributes :id, :location_id, :machine_id, :location_name, :machine, :machine_issues, :is_working, :updated_at
#   has_one :machine
#   has_many :machine_issues
#
#   def location_name
#     loc_mac = self.object
#     location = Location.find(loc_mac.location_id)
#     location.name
#   end
#
#
# end
