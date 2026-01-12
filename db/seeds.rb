
Flight.create!(
  flight_number: "CA101",
  from_city: "Phnom Penh",
  to_city: "Jakarta",
  departure_time: 1.day.from_now,
  arrival_time: 1.day.from_now + 1.hour,
  seats_available: 50,
  price: 300
)

Flight.create!(
  flight_number: "CA202",
  from_city: "Phnom Penh",
  to_city: "Singapore",
  departure_time: 2.days.from_now,
  arrival_time: 2.days.from_now + 2.hours,
  seats_available: 40,
  price: 180
)
Flight.create!(
  flight_number: "CA303",
  from_city: "Phnom Penh",
  to_city: "Manila",
  departure_time: 3.days.from_now,
  arrival_time: 3.days.from_now + 1.hour,
  seats_available: 60,
  price: 90
)