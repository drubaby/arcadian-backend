class MachineIssuesController < ApplicationController
  def create
    mac_issue = MachineIssue.create(mac_issue_params)
    render json: mac_issue.to_json
  end

  def update_location_by_issue
    id = params[:location_machine_id]
    loc_mac = LocationMachine.find(id)
    location_id = loc_mac.location_id
    updated_location = Location.find(location_id)
    render json: updated_location
  end

  def index
    render json: MachineIssue.all.to_json
  end

  def show
    render json: MachineIssue.find(params[:id]).to_json
  end

  def update
    debugger
    mac_issue = MachineIssue.find(params[:id]).to_json
    mac_issue.update(mac_issue_params)
    #not sure about this
    render json: mac_issue.to_json
  end

  def destroy
    mac_issue = MachineIssue.find(params[:id])
    mac_issue.destroy()
    render json: mac_issue
  end

  private
  def mac_issue_params
    params.require(:machine_issue).permit(:location_machine_id, :description, :resolved)
  end


end
