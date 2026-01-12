# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_01_12_081739) do
  create_table "admin_auths", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "password_digest"
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.integer "flight_id", null: false
    t.string "phone"
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "arrival_time"
    t.integer "business_seats", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "departure_time"
    t.integer "economy_seats", default: 0, null: false
    t.integer "first_seats", default: 0, null: false
    t.string "flight_number"
    t.string "from_city"
    t.decimal "price"
    t.string "to_city"
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.datetime "created_at", null: false
    t.date "date_of_birth"
    t.string "full_name"
    t.string "nationality"
    t.string "passport_number"
    t.string "seat_type"
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_passengers_on_booking_id"
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "passengers", "bookings"
end
