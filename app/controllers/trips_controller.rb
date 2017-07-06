class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    if Trip.create!(trip_params)
      redirect_to trips_url
    else
      redirect_to new_trip
    end
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description)
  end
end
