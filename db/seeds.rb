Flight.create!(
  flight_number: "CA101",
  from_city: "Phnom Penh",
  to_city: "Jakarta",
  departure_time: Time.now + 1.day,
  arrival_time: Time.now + 1.day + 1.hour,
  seat_available: 50,
  price: 300
)

Flight.create!(
  flight_number: "CA202",
  from_city: "Phnom Penh",
  to_city: "Singapore",
  departure_time: Time.now + 2.days,
  arrival_time: Time.now + 2.days + 2.hours,
  seat_available: 40,
  price: 180
)
