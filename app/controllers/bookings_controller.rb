class BookingsController < ApplicationController
  before_action :set_aircraft, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.aircraft = @aircraft
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
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

  def booking_params
    params.require(:booking).permit(
      :start_date, :end_date, :aircraft_id, :user_id, :total_price
    )
  end

  def set_aircraft
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

end
