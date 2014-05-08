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

ActiveRecord::Schema.define(version: 20140507231527) do

  create_table "goldmeasures", force: true do |t|
    t.string   "time"
    t.string   "total_shtd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldpercs", force: true do |t|
    t.string   "time"
    t.string   "under_shtd"
    t.string   "above_shtd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldpis", force: true do |t|
    t.string   "label"
    t.string   "value"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldtrucks", force: true do |t|
    t.string   "time"
    t.string   "t1"
    t.string   "t2"
    t.string   "t3"
    t.string   "t4"
    t.string   "t5"
    t.string   "t6"
    t.string   "t7"
    t.string   "t8"
    t.string   "t9"
    t.string   "t10"
    t.string   "t11"
    t.string   "t12"
    t.string   "t13"
    t.string   "t14"
    t.string   "t15"
    t.string   "t16"
    t.string   "t17"
    t.string   "t18"
    t.string   "t19"
    t.string   "t20"
    t.string   "t21"
    t.string   "t22"
    t.string   "t23"
    t.string   "t24"
    t.string   "t25"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "opttrucks", force: true do |t|
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

  create_table "truckmetrics", force: true do |t|
    t.string   "equipment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status_category"
    t.string   "duration"
    t.datetime "date"
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
