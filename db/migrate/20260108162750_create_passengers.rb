class CreatePassengers < ActiveRecord::Migration[8.1]
  def change
    create_table :passengers do |t|
      t.string :full_name
      t.string :passport_number
      t.date :date_of_birth
      t.string :nationality
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
