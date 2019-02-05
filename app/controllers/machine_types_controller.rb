class MachineTypesController < ApplicationController

  def index
    render json: MachineType.all.to_json
  end

  def show
    render json: MachineType.find(params[:id]).to_json
  end

end
