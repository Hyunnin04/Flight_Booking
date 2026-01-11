class CreateBookings < ActiveRecord::Migration[8.1]
  def change
    create_table :bookings do |t|
      t.string :email
      t.string :phone
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
