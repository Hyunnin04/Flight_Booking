# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :set_flight

  def new
    @booking = @flight.bookings.new
    num = params[:passengers].to_i
    num = 1 if num < 1
    num.times { @booking.passengers.build }
  end

  def create
    @booking = @flight.bookings.new(booking_params)
    if @booking.save
      redirect_to flight_booking_path(@flight, @booking), notice: "Booking successful"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def booking_params
    params.require(:booking).permit(
      :email,
      :phone,
      passengers_attributes: [
        :full_name,
        :passport_number,
        :date_of_birth,
        :nationality,
        :seat_type
      ]
    )
  end
end
