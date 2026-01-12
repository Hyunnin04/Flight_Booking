class Flight < ApplicationRecord
  # One flight can have many bookings
  has_many :bookings, dependent: :destroy

  validates :seats_available, numericality: { greater_than_or_equal_to: 0 }
end
