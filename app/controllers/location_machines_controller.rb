class LocationMachinesController < ApplicationController
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

  def update_location_by_machine
    id = params[:location_id]
    updated_location = Location.find(id)
    render json: updated_location
  end

  def create
    new_location_machine = LocationMachine.create(loc_mac_params)
    render json: new_location_machine.to_json
  end

  def update
    loc_mac = LocationMachine.find(params[:id])
    loc_mac.update(loc_mac_params)
    render json: LocationMachine.find(params[:id])
  end

  def destroy
    location_machine = LocationMachine.find(params[:id])
    location_machine.destroy()
    render json: location_machine
  end

  private

  def loc_mac_params
    params.require(:location_machine).permit(:id, :location_id, :machine_id, :is_working)
  end
end
