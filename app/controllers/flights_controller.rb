class FlightsController < ApplicationController
  def index
    # Fetch all flights for display
    @flights = Flight.all
  end
end
