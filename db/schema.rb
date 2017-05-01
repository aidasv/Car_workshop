# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170430121420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "production_year"
    t.string   "license_plate"
    t.string   "vin_code"
    t.string   "body_type"
    t.string   "cubic_capacity"
    t.string   "power"
    t.string   "fuel"
    t.string   "color"
    t.date     "ta_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "unit"
    t.decimal  "quantity"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

  create_table "repair_statuses", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.text     "comment"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "visit_id"
  end

  create_table "visit_statuses", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.text     "comment"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "visit_id"
  end

  create_table "visits", force: :cascade do |t|
    t.string   "name"
    t.date     "end_date"
    t.date     "return_date"
    t.integer  "mileage"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "client_id"
    t.integer  "car_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "position"
    t.string   "email"
    t.boolean  "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

  create_table "works", force: :cascade do |t|
    t.string   "name"
    t.string   "unit"
    t.decimal  "quantity"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

end
