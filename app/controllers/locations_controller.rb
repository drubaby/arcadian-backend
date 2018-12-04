class LocationsController < ApplicationController

  def create
    location = Location.create(location_params)
    render json: location.to_json
  end

  def index
    render json: Location.all
  end

  def show
    render json: Location.find(params[:id])
  end



  private
  def location_params
    params.require(:location).permit(:name, :street, :city, :state, :zip, :phone, :website)
  end

end
