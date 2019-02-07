require 'rest-client'
require 'byebug'
require 'json'

#requires opdb id
OPDB_URL = "https://opdb.org/api/machines"
# once per hour
OPDB_ALL_MACHINES_URL = 'https://opdb.org/api/export'

machines = JSON.parse(File.read('/Users/drubles/Development/code/Arcadian/arcadian-backend/machines.json'))


machines.each do |machine|
  name = machine["name"]
  manufacture_date = machine["manufacture_date"]
  opdb_id = machine["opdb_id"]
  ipdb_id = machine["ipdb_id"]
  # byebug
  MachineType.create(name: name, manufacture_date: manufacture_date, opdb_id: opdb_id, ipdb_id: ipdb_id)
end

locations = JSON.parse(File.read('/Users/drubles/Development/code/Arcadian/arcadian-backend/locations.json'))

locations["locations"].each do |location|
  name = location["name"]
  street = location["street"]
  city = location["city"]
  state = location["state"]
  zip = location["zip"]
  phone = location["phone"]
  website = location["website"]
  Location.create(name: name, street: street, city: city, state: state, zip: zip, phone: phone, website: website)
end

# location_machines
# give lymans 5 machines
lymans = Location.find_by_name("Lyman's Tavern")
5.times do |i|
  Machine.create(location_id: lymans.id, machine_type_id: (rand(1..2200)))
end

# give BC 10 machines
bc = Location.find_by_name("Black Cat")
10.times do |i|
  Machine.create(location_id: bc.id, machine_type_id: (rand(1..2200)))
end


Location.all.each do |location|
  5.times do |i|
  Machine.create(location_id: location.id, machine_type_id: (rand(1..Machine.all.size)))
  # Does this work? if not revert to 1..1880 or w/e number of machines might be
  end
end

User.create(username: 'drubaby', password: 'pw')
