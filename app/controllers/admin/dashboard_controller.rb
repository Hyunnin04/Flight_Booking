class Admin::DashboardController < Admin::BaseController
  def index
    @total_flights = Flight.count
    @total_bookings = Booking.count
  end
end