class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, dependent: :destroy

  accepts_nested_attributes_for :passengers

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, format: { with: /\A\d{7,15}\z/, message: "must be 7–15 digits" }

  before_create :reduce_flight_seats
  after_destroy :restore_flight_seats

  private 
  def reduce_flight_seats
    seat_needed = passengers.size

    flight.with_lock do
      if flight.seats_available < seat_needed
        errors.add(:base, "Not enough seats available")
        throw(:abort)
      end

      flight.update!(seats_available: flight.seats_available - seat_needed)
    end
  end
end
