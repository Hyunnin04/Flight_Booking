class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, inverse_of: :booking, dependent: :destroy
  accepts_nested_attributes_for :passengers, allow_destroy: true

  validates :email, :phone, presence: true

  before_validation :build_passengers_if_needed
  before_create :reduce_flight_seats
  after_destroy :restore_flight_seats

  def total_price
    passengers.sum(&:price)
  end

  private

  # Make sure passengers exist
  def build_passengers_if_needed
    self.passengers.build if self.passengers.empty?
  end

  # Reduce flight seats based on each passenger's seat_type
  def reduce_flight_seats
    flight.with_lock do
      counts = passengers.group(:seat_type).count
      counts.each do |seat_type, num|
        column = seat_column(seat_type)
        if flight[column] < num
          errors.add(:base, "Not enough #{seat_type} seats")
          throw(:abort)
        end
        flight.update!(column => flight[column] - num)
      end
    end
  end

  # Restore flight seats on cancel
  def restore_flight_seats
    flight.with_lock do
      counts = passengers.group(:seat_type).count
      counts.each do |seat_type, num|
        column = seat_column(seat_type)
        flight.update!(column => flight[column] + num)
      end
    end
  end

  # Map seat_type to flight column
  def seat_column(seat_type)
    case seat_type
    when "economy" then :economy_seats
    when "business" then :business_seats
    when "first" then :first_seats
    end
  end
end
