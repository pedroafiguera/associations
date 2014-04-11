# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140410205450) do

  create_table "cars", force: true do |t|
    t.string   "brand"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars_drivers", force: true do |t|
  end

  create_table "components", force: true do |t|
    t.string   "material"
    t.string   "purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "car_id"
    t.integer  "part_id"
  end

  add_index "components", ["car_id"], name: "index_components_on_car_id"
  add_index "components", ["part_id"], name: "index_components_on_part_id"

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.string   "function"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "car_id"
  end

  add_index "parts", ["car_id"], name: "index_parts_on_car_id"

  create_table "routes", force: true do |t|
    t.integer  "driver_id"
    t.integer  "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routes", ["car_id"], name: "index_routes_on_car_id"
  add_index "routes", ["driver_id"], name: "index_routes_on_driver_id"

end
