class MachinesController < ApplicationController

  def index
    render json: Machine.all.to_json
  end

  def show
    render json: Machine.find(params[:id]).to_json
  end

end
