class LocationMachinesController < ApplicationController


  def index
    render json: LocationMachine.all.to_json
  end

  def show
    LocationMachine.find(params[:id])
    
    render json: LocationMachine.find(params[:id]).to_json
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
