class Passenger < ApplicationRecord
  # Each passenger belongs to one booking
  belongs_to :booking
  validates :full_name, :passport_number, :date_of_birth, :nationality, presence: true 

  SEAT_TYPES = %w[economy business first]
  validates :seat_type, inclusion: { in: SEAT_TYPES }

end
