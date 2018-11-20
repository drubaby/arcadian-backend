class LocationsController < ApplicationController
  def index
    render json: Location.all.to_json
  end

  def show
    render json: Location.find(params[:id]).to_json
  end
end
