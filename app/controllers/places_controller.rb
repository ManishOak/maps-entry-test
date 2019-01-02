class PlacesController < ApplicationController

  before_action :get_place, only: [:show, :destroy]
  def index
    @places = Place.all
  end

  def create
    @place = Place.new(name: params[:place_name], google_id: params[:google_id], street_number: params[:street_number], street_name: params[:street_name], city_name: params[:city_name], open_hours: params[:open_hours])
    if @place.save
    end
    redirect_to places_path
  end

  def show
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private
  def get_place
    @place = Place.find(params[:id])
  end
end