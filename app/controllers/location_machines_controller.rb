class LocationMachinesController < ApplicationController
# issue of
# Machine info, [machine issues]

  def index
    render json: LocationMachine.all
  end

  def show
    LocationMachine.find(params[:id])
    render json: LocationMachine.find(params[:id])
  end

  # corresponds to custom route /machines_at_location/:id
  def find_for_location
    id = params[:id]
    loc_macs = LocationMachine.where(location_id: id)
    render json: loc_macs
  end

  def create
    new_location_machine = LocationMachine.create(loc_mac_params)
    render json: new_location_machine.to_json
  end

  def delete
    location_machine = LocationMachine.find(params[:id])
    location_machine.destroy()
    render location_machine.to_json
  end

  private
  def loc_mac_params
    params.require(:location_machine).permit(:location_id, :machine_id)
  end

end
