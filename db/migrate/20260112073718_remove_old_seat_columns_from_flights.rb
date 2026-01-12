class RemoveOldSeatColumnsFromFlights < ActiveRecord::Migration[8.1]
  def change
    remove_column :flights, :seat_available, :integer
    remove_column :flights, :seats_available, :integer
  end
end
