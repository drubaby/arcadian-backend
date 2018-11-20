require 'rest-client'
require 'byebug'
require 'json'

#requires opdb id
OPDB_URL = "https://opdb.org/api/machines"
# once per hour
OPDB_ALL_MACHINES_URL = 'https://opdb.org/api/export'

# Get machine info
# https://opdb.org/api/machines/{opdb_id}
#
# allMachinesGet = RestClient.get(OPDB_ALL_MACHINES_URL + '?api_token=' + OPDB_TOKEN)
# allMachinesJSON = JSON.parse(allMachinesGet)

machines = JSON.parse(File.read('/Users/drubles/Development/code/Arcadian/arcadian-backend/machines.json'))


machines.each do |machine|
  name = machine["name"]
  manufacture_date = machine["manufacture_date"]
  opdb_id = machine["opdb_id"]
  ipdb_id = machine["ipdb_id"]
  # byebug
  Machine.create(name: name, manufacture_date: manufacture_date, opdb_id: opdb_id, ipdb_id: ipdb_id)
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
