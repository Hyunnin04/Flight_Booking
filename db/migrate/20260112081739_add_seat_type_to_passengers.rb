class AddSeatTypeToPassengers < ActiveRecord::Migration[8.1]
  def change
    add_column :passengers, :seat_type, :string
  end
end
