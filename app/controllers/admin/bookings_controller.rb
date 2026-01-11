class Admin::BookingsController < Admin::BaseController

  # show all bookings
  def index
    @bookings = Booking.includes(
      :flight, 
      :passengers)
  end

  # show booking details
  def show
      @booking = Booking.find(params[:id])
  end
end
