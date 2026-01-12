class AddDefaultsToSeatTypes < ActiveRecord::Migration[8.1]
  def change
    change_column :flights, :economy_seats, :integer, default: 0, null: false
    change_column :flights, :business_seats, :integer, default: 0, null: false
    change_column :flights, :first_seats, :integer, default: 0, null: false
  end
end
