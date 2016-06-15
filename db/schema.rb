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

ActiveRecord::Schema.define(version: 20160615165554) do

  create_table "details", force: :cascade do |t|
    t.string   "nameDetail"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "details", ["order_id"], name: "index_details_on_order_id"

  create_table "operations", force: :cascade do |t|
    t.string   "name"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "operations", ["order_id"], name: "index_operations_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.string   "fullName"
    t.string   "numTel"
    t.string   "address"
    t.string   "license"
    t.string   "carBrand"
    t.string   "numAuto"
    t.integer  "year"
    t.float    "scope"
    t.date     "dateOrder"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.date     "dateStart"
    t.date     "dateEnd"
    t.integer  "box"
  end

end
