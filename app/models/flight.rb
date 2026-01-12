class Flight < ApplicationRecord
  # One flight can have many bookings
  has_many :bookings, dependent: :destroy

  validates :economy_seats, :business_seats, :first_seats,
            numericality: { greater_than_or_equal_to: 0 }

  def full?
    economy_seats.zero? &&
    business_seats.zero? &&
    first_seats.zero?
  end
end
