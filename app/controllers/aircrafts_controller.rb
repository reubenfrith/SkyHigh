class AircraftsController < ApplicationController
  def index
    @aircrafts = Aircraft.all
  end

  def new
    @aircraft = Aircraft.new
  end

  def show
    @aircraft = Aircraft.find(params[:id])
  end


  def create
    @aircraft = Aircraft.new(aircraft_params)
    @aircraft.user = current_user
    if @aircraft.save
      redirect_to aircraft_path(@aircraft)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def aircraft_params
    params.require(:aircraft).permit(
      :aircraft_type, :title, :description, :price_per_day,
      :max_occupants, :departure_address, :arrival_address
    )
  end

end
