class LocationMachineController < ApplicationController


  def index
    render json: LocationMachine.all.to_json
  end

  def show
    render json: LocationMachine.find(params[:id]).to_json
  end

  def create
  end

  def destroy
  end
end
