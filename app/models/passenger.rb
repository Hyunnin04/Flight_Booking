class Passenger < ApplicationRecord
  # Each passenger belongs to one booking
  belongs_to :booking



end
