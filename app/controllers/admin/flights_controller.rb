class Admin::FlightsController < Admin::BaseController
  # show all flights
  def index
    @flights = Flight.all
  end
  # show flight details
  def show
    @flight = Flight.find(params[:id])
  end

  # render form for new flight
  def new
    @flight = Flight.new
  end

  # create a new flight
  def create
    @flight = Flight.new(flight_params)
    if @flight.save
      redirect_to admin_flights_path, 
      notice: "Flight created successfully."
    else
      render :new
    end
  end
  
  #edit flight
  def edit
    @flight = Flight.find(params[:id])
  end

  #update flight
  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to admin_flights_path, notice: "Flight updated successfully."
    else
      render :edit
    end
  end

  # deleted flight
  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to admin_flights_path, notice: "Flight deleted successfully."
  end  
  private
  
  # strong parameters for flight
    def flight_params
  params.require(:flight).permit(
    :flight_number,
    :from_city,
    :to_city,
    :departure_time,
    :arrival_time,
    :seat_available,
    :price
  )
  end
end