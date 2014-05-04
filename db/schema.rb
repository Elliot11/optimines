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

ActiveRecord::Schema.define(version: 20140504003129) do

  create_table "loader_statuses", force: true do |t|
    t.string   "time"
    t.string   "button1"
    t.string   "button2"
    t.string   "button3"
    t.string   "button4"
    t.string   "button5"
    t.string   "button6"
    t.string   "button7"
    t.string   "button8"
    t.string   "button9"
    t.string   "button10"
    t.string   "button11"
    t.string   "button12"
    t.string   "button13"
    t.string   "button14"
    t.string   "button15"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opt1s", force: true do |t|
    t.string   "truck"
    t.string   "time"
    t.string   "percentage"
    t.string   "color"
    t.string   "hidden"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "optloaders", force: true do |t|
    t.string   "time"
    t.string   "truck"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opttucks", force: true do |t|
    t.string   "truck"
    t.string   "time"
    t.string   "percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processtrucks", force: true do |t|
    t.string   "time"
    t.string   "truck1"
    t.string   "truck2"
    t.string   "truck3"
    t.string   "truck4"
    t.string   "truck5"
    t.string   "truck6"
    t.string   "truck7"
    t.string   "truck8"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trucks", force: true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "datetimestamp"
    t.text     "description"
  end

end
