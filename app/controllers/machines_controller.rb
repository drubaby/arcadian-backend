class MachinesController < ApplicationController
  def index
    render json: Machine.all
  end

  def show
    Machine.find(params[:id])
    render json: Machine.find(params[:id])
  end

  # corresponds to custom route /machines_at_location/:id
  def find_for_location
    id = params[:id]
    macs = Machine.where(location_id: id)
    render json: macs
  end

  def update_location_by_machine
    id = params[:location_id]
    updated_location = Location.find(id)
    render json: updated_location
  end

  def create
    new_machine = Machine.create(mac_params)
    render json: new_machine.to_json
  end

  def update
    mac = Machine.find(params[:id])
    mac.update(mac_params)
    render json: Machine.find(params[:id])
  end

  def destroy
    machine = Machine.find(params[:id])
    machine.destroy()
    render json: machine
  end

  private

  def mac_params
    params.require(:machine).permit(:id, :user_id, :location_id, :machine_id, :is_working)
  end
end
