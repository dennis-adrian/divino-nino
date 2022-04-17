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

ActiveRecord::Schema[7.0].define(version: 2022_04_16_210748) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "blood_type", ["a_positive", "a_negative", "b_positive", "b_negative", "o_positive", "o_negative", "ab_positive", "ab_negative"]
  create_enum "blood_types", ["a_positive", "a_negative", "b_positive", "b_negative", "o_positive", "o_negative", "ab_positive", "ab_negative"]
  create_enum "reservation_statuses", ["pending", "confirmed", "cancelled"]
  create_enum "sexes", ["male", "female", "non_binary"]

  create_table "clients", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "last_name", limit: 100
    t.string "nit", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contraceptive_types", force: :cascade do |t|
    t.string "name", limit: 100
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contraceptives", force: :cascade do |t|
    t.text "observations"
    t.bigint "contraceptive_type_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contraceptive_type_id"], name: "index_contraceptives_on_contraceptive_type_id"
    t.index ["patient_id"], name: "index_contraceptives_on_patient_id"
  end

  create_table "doctor_specialties", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "specialty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctor_specialties_on_doctor_id"
    t.index ["specialty_id"], name: "index_doctor_specialties_on_specialty_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "identification", limit: 50
    t.string "first_name", limit: 200
    t.string "last_name", limit: 20
    t.date "birth_date"
    t.string "sex", limit: 10
    t.string "email", limit: 200
    t.string "phone", limit: 50
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name", limit: 200
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "number", limit: 50
    t.date "creation_date"
    t.date "due_date"
    t.float "total_cost"
    t.text "notes"
    t.bigint "client_id", null: false
    t.bigint "reservation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_invoices_on_client_id"
    t.index ["reservation_id"], name: "index_invoices_on_reservation_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "room", limit: 10
    t.bigint "specialty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialty_id"], name: "index_offices_on_specialty_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "identification", limit: 50
    t.string "first_name", limit: 200
    t.string "last_name", limit: 20
    t.date "birth_date"
    t.string "email", limit: 200
    t.string "phone", limit: 50
    t.text "address"
    t.integer "weight"
    t.integer "height"
    t.boolean "is_pregnant"
    t.date "menstruation_date"
    t.boolean "has_menopause"
    t.boolean "has_reservation"
    t.date "last_medical_appointment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.enum "blood_type", enum_type: "blood_types"
    t.enum "sex", default: "male", null: false, enum_type: "sexes"
  end

  create_table "reservation_fees", force: :cascade do |t|
    t.string "name", limit: 50
    t.float "cost"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date_made"
    t.bigint "patient_id", null: false
    t.bigint "schedule_id", null: false
    t.bigint "reservation_fee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.enum "status", default: "pending", null: false, enum_type: "reservation_statuses"
    t.bigint "specialty_id"
    t.index ["patient_id"], name: "index_reservations_on_patient_id"
    t.index ["reservation_fee_id"], name: "index_reservations_on_reservation_fee_id"
    t.index ["schedule_id"], name: "index_reservations_on_schedule_id"
    t.index ["specialty_id"], name: "index_reservations_on_specialty_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.boolean "is_busy"
    t.bigint "doctor_id", null: false
    t.bigint "specialty_id", null: false
    t.bigint "office_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_schedules_on_doctor_id"
    t.index ["office_id"], name: "index_schedules_on_office_id"
    t.index ["specialty_id"], name: "index_schedules_on_specialty_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  add_foreign_key "contraceptives", "contraceptive_types"
  add_foreign_key "contraceptives", "patients"
  add_foreign_key "doctor_specialties", "doctors"
  add_foreign_key "doctor_specialties", "specialties"
  add_foreign_key "invoices", "clients"
  add_foreign_key "invoices", "reservations"
  add_foreign_key "offices", "specialties"
  add_foreign_key "reservations", "patients"
  add_foreign_key "reservations", "reservation_fees"
  add_foreign_key "reservations", "schedules"
  add_foreign_key "reservations", "specialties"
  add_foreign_key "schedules", "doctors"
  add_foreign_key "schedules", "offices"
  add_foreign_key "schedules", "specialties"
end
