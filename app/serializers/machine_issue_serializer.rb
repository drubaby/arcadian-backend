class MachineIssueSerializer < ActiveModel::Serializer
  attributes :id, :machine_id, :description, :resolved, :created_at, :updated_at, :machine_name, :location_name

  def machine_name
    # debugger
    @issue = self.object
    mac = Machine.find(@issue.machine_id)
    mac.machine_type.name
  end

  def location_name
    @issue = self.object
    mac = Machine.find(@issue.machine_id)
    location = Location.find(mac.location_id)
    location.name
  end


end
