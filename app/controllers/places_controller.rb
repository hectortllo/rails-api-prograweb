class PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @places, status: :ok
  end

  def show
    @place = Place.find(params[:id])
    render json: @place, status: :ok
  end

  def create
    @place = Place.create!(place_params)
    render json: @place, status: :created
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
    render json: @place, status: :ok
  end

  private
  def place_params
    params.require(:place).permit(:image, :name, :description, :location, :score)
  end
end
