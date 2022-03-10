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

ActiveRecord::Schema.define(version: 2022_03_02_052955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.integer "car_model"
    t.integer "car_model_second"
    t.integer "car_displacement"
    t.integer "car_displacement_second"
    t.string "car_registered_place"
    t.string "car_registered_place_second"
    t.string "car_model_number"
    t.string "car_model_number_second"
    t.string "car_kana"
    t.string "car_kana_second"
    t.string "car_number"
    t.string "car_number_second"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fares", force: :cascade do |t|
    t.integer "price", null: false
    t.integer "type_section"
    t.bigint "ship_class_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ship_class_id"], name: "index_fares_on_ship_class_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "family_name"
    t.string "first_name_kana"
    t.string "family_name_kana"
    t.string "birthday_year"
    t.string "birthday_month"
    t.string "birthday_day"
    t.string "gender"
    t.string "telephone_number_first"
    t.string "telephone_number_second"
    t.string "telephone_number_third"
    t.string "landline_number_first"
    t.string "landline_number_second"
    t.string "landline_number_third"
    t.string "post_code"
    t.string "municipalities"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ports", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservation_details", force: :cascade do |t|
    t.bigint "reserve_id", null: false
    t.integer "route_section", null: false
    t.date "use_day", null: false
    t.bigint "timetable_id", null: false
    t.bigint "ship_class_id", null: false
    t.integer "price", null: false
    t.integer "adult_reservation_number", null: false
    t.integer "child_reservation_number", null: false
    t.integer "infant_reservation_number", null: false
    t.integer "baby_reservation_number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reserve_id"], name: "index_reservation_details_on_reserve_id"
    t.index ["ship_class_id"], name: "index_reservation_details_on_ship_class_id"
    t.index ["timetable_id"], name: "index_reservation_details_on_timetable_id"
  end

  create_table "reserves", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.string "receipt_number", null: false
    t.integer "roundtrip_section", null: false
    t.datetime "cancel_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_reserves_on_member_id"
  end

  create_table "ship_classes", force: :cascade do |t|
    t.string "name", null: false
    t.integer "max_passenger"
    t.integer "ship_section"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ships", force: :cascade do |t|
    t.integer "ship_section", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.bigint "departure_port_id", null: false
    t.time "departure_time", null: false
    t.bigint "arrival_port_id", null: false
    t.time "arrival_time", null: false
    t.bigint "ship_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arrival_port_id"], name: "index_timetables_on_arrival_port_id"
    t.index ["departure_port_id"], name: "index_timetables_on_departure_port_id"
    t.index ["ship_id"], name: "index_timetables_on_ship_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "email_2", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fares", "ship_classes"
  add_foreign_key "reservation_details", "reserves", column: "reserve_id"
  add_foreign_key "reservation_details", "ship_classes"
  add_foreign_key "reservation_details", "timetables"
  add_foreign_key "reserves", "members"
  add_foreign_key "timetables", "ports", column: "arrival_port_id"
  add_foreign_key "timetables", "ports", column: "departure_port_id"
  add_foreign_key "timetables", "ships"
end
