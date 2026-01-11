class CreateFlights < ActiveRecord::Migration[8.1]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :from_city
      t.string :to_city
      t.datetime :departure_time
      t.datetime :arrival_time
      t.integer :seat_available
      t.decimal :price

      t.timestamps
    end
  end
end
