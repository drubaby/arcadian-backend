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

machines = JSON.parse(File.read('/Users/drubles/Development/code/Arcadian/arcadian-backend/response.json'))

machines.each do |machine|
  name = machine["name"]
  manufacture_date = machine["manufacture_date"]
  opdb_id = machine["opdb_id"]
  ipdb_id = machine["ipdb_id"]
  # byebug
  Machine.create(name: name, manufacture_date: manufacture_date, opdb_id: opdb_id, ipdb_id: ipdb_id)
end
