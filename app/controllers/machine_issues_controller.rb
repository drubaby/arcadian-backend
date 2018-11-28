class MachineIssuesController < ApplicationController
  def create
    # debugger
    mac_issue = MachineIssue.create(mac_issue_params)
    render json: mac_issue.to_json
  end

  def index
    render json: MachineIssue.all.to_json
  end

  def show
    render json: MachineIssue.find(params[:id]).to_json
  end

  def update
    mac_issue = MachineIssue.find(params[:id]).to_json
    mac_issue.update(mac_issue_params)
    #not sure about this
    render json: mac_issue.to_json
  end

  def delete
    mac_issue = MachineIssue.find(params[:id])
    mac_issue.destroy()
    render mac_issue.to_json
  end

  private
  def mac_issue_params
    params.require(:machine_issue).permit(:location_machine_id, :description, :resolved)
  end


end
