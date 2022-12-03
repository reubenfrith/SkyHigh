class AircraftsController < ApplicationController
  before_action :set_aircraft, only: %i[destroy show edit]

  def index
    @aircrafts = Aircraft.all
  end

  def new
    @aircraft = Aircraft.new
  end

  def show
  end

  def my_aircraft
    @aircrafts = Aircraft.where("user_id = ?", current_user.id)
  end

  def edit
  end

  def update
    @aircraft = Aircraft.find(params[:id])
    @aircraft.update(aircraft_params)
    redirect_to aircraft_path(@aircraft)
  end

  def destroy
    @aircraft.destroy
    redirect_to my_aircraft_path
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

  def set_aircraft
    @aircraft = Aircraft.find(params[:id])
  end

  def aircraft_params
    params.require(:aircraft).permit(
      :aircraft_type, :title, :description, :price_per_day,
      :max_occupants, :departure_address, :arrival_address
    )
  end

end
