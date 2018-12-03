class MachineIssueSerializer < ActiveModel::Serializer
  attributes :id, :location_machine_id, :description, :resolved, :created_at, :updated_at, :machine_name, :location_name

  def machine_name
    # debugger
    @issue = self.object
    loc_mac = LocationMachine.find(@issue.location_machine_id)
    machine = Machine.find(loc_mac.machine_id)
    machine.name
  end

  def location_name
    @issue = self.object
    loc_mac = LocationMachine.find(@issue.location_machine_id)
    location = Location.find(loc_mac.location_id)
    location.name
  end


end
