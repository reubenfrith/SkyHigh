class BookingsController < ApplicationController
  before_action :set_aircraft, only: %i[new create]

  def index
    @your_bookings = Booking.where("user_id = ?", current_user.id)
    @your_aircraft_bookings = Booking.joins(:aircraft).where(aircraft: { user_id: current_user.id })
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.aircraft = @aircraft
    number_of_days = (@booking.end_date - @booking.start_date) + 1
    @booking.total_price = @aircraft.price_per_day * number_of_days
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def show
    @booking = Booking.find(params[:id])
    @aircraft = Aircraft.find(@booking.aircraft_id)
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
