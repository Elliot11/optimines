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

ActiveRecord::Schema.define(version: 20140510040934) do

  create_table "goldmeasures", force: true do |t|
    t.integer  "time"
    t.float    "total_shtd", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldpercs", force: true do |t|
    t.integer  "time"
    t.float    "under_shtd", limit: 50
    t.float    "above_shtd", limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldpis", force: true do |t|
    t.string   "label"
    t.float    "value",      limit: 50
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldtrucks", force: true do |t|
    t.integer  "time"
    t.boolean  "t1"
    t.boolean  "t2"
    t.boolean  "t3"
    t.boolean  "t4"
    t.boolean  "t5"
    t.boolean  "t6"
    t.boolean  "t7"
    t.boolean  "t8"
    t.boolean  "t9"
    t.boolean  "t10"
    t.boolean  "t11"
    t.boolean  "t12"
    t.boolean  "t13"
    t.boolean  "t14"
    t.boolean  "t15"
    t.boolean  "t16"
    t.boolean  "t17"
    t.boolean  "t18"
    t.boolean  "t19"
    t.boolean  "t20"
    t.boolean  "t21"
    t.boolean  "t22"
    t.boolean  "t23"
    t.boolean  "t24"
    t.boolean  "t25"
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

  create_table "truckmetrics", force: true do |t|
    t.string   "equipment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status_category"
    t.float    "duration",        limit: 50
    t.datetime "date"
  end

end
