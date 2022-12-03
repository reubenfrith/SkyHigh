class AircraftsController < ApplicationController
  def index
    @aircrafts = Aircraft.all
  end

  def new
    @aircraft = Aircraft.new
  end

  def create
    @aircraft = Aircraft.new(aircraft_params)
    @aircraft.save
    redirect_to aircraft_path(@aircraft)
  end

  private

  def aircraft_params
    params.require(:aircraft).permit(
      :aircraft_type, :title, :description, :price_per_day,
      :max_occupants, :departure_address
    )
  end

end
