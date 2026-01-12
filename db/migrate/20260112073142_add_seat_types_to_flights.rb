class AddSeatTypesToFlights < ActiveRecord::Migration[8.1]
  def change
    add_column :flights, :economy_seats, :integer
    add_column :flights, :business_seats, :integer
    add_column :flights, :first_seats, :integer
  end
end
