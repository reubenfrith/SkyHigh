class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.aircraft = Aircraft.find(params[:id])
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      raise
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

end
