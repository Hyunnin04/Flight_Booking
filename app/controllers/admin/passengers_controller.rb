class Admin::PassengersController < Admin::BaseController
  def index
    @passengers = Passenger.all
  end

  def show
    @passenger = Passenger.find(params[:id])
  end
end
