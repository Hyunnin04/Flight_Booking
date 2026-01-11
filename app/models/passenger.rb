class Passenger < ApplicationRecord
  # Each passenger belongs to one booking
  belongs_to :booking

  validates :full_name, :passport_number, :date_of_birth, :nationality, presence: true
end
