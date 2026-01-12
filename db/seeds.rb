Flight.create!(
  flight_number: "CA101",
  from_city: "Phnom Penh",
  to_city: "Jakarta",
  departure_time: 1.day.from_now,
  arrival_time: 1.day.from_now + 1.hour,
  economy_seats: 40,
  business_seats: 8,
  first_seats: 2,
  price: 300
)

Flight.create!(
  flight_number: "CA202",
  from_city: "Phnom Penh",
  to_city: "Singapore",
  departure_time: 2.days.from_now,
  arrival_time: 2.days.from_now + 2.hours,
  economy_seats: 30,
  business_seats: 6,
  first_seats: 4,
  price: 180
)

Flight.create!(
  flight_number: "CA303",
  from_city: "Phnom Penh",
  to_city: "Manila",
  departure_time: 3.days.from_now,
  arrival_time: 3.days.from_now + 1.hour,
  economy_seats: 50,
  business_seats: 6,
  first_seats: 4,
  price: 90
)
Flight.create!(
  flight_number: "CA404",
  from_city: "Phnom Penh",
  to_city: "Kuala Lumpur",
  departure_time: 4.days.from_now,
  arrival_time: 4.days.from_now + 2.hours,
  economy_seats: 20,
  business_seats: 10,
  first_seats: 5,
  price: 80
)