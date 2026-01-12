class Passenger < ApplicationRecord
  # Each passenger belongs to one booking
  belongs_to :booking
  validates :full_name, :passport_number, :date_of_birth, :nationality, presence: true

  SEAT_TYPES = %w[economy business first]
  validates :seat_type, inclusion: { in: SEAT_TYPES }

  def price
    base = booking.flight.price

    case seat_type
    when "economy"  then base
    when "business" then base * 1.5
    when "first"    then base * 2
    else 0
    end
  end
end
