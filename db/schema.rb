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

ActiveRecord::Schema.define(version: 20190917165502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "comment", limit: 250
  end

  create_table "drivers", force: :cascade do |t|
    t.string  "name",       limit: 50
    t.string  "last_name",  limit: 50
    t.integer "tc_no"
    t.string  "tel"
    t.string  "address"
    t.date    "birth_date"
    t.date    "created_at"
    t.date    "updated_at"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name",          limit: 255,                    null: false
    t.string   "code",          limit: 20,                     null: false
    t.string   "vehicle_class", limit: 20
    t.string   "brand",         limit: 20
    t.string   "model",         limit: 50
    t.integer  "model_year"
    t.integer  "fuel_capacity"
    t.string   "fuel_type",     limit: 10
    t.string   "status",        limit: 20,  default: "active"
    t.date     "purchase_date"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "vehicles_id"
    t.index ["vehicles_id"], name: "index_vehicles_on_vehicles_id", using: :btree
  end

end
