class Flight < ApplicationRecord
  # One flight can have many bookings
  has_many :bookings, dependent: :destroy
end
