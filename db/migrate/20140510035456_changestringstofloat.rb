class Changestringstofloat < ActiveRecord::Migration
  def change
  drop_table :goldmeasures
  drop_table :goldpercs
  drop_table :goldpis
  drop_table :goldtrucks
  drop_table :loader_statuses
  drop_table :opt1s
  drop_table :processtrucks
  drop_table :truckmetrics
  drop_table :trucks


  create_table "goldmeasures", force: true do |t|
    t.integer   "time"
    t.float   "total_shtd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldpercs", force: true do |t|
    t.integer   "time"
    t.float   "under_shtd"
    t.float   "above_shtd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldpis", force: true do |t|
    t.string   "label"
    t.float    "value",      limit: 255
    t.integer   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goldtrucks", force: true do |t|
    t.integer   "time"
    t.boolean   "t1"
    t.boolean   "t2"
    t.boolean   "t3"
    t.boolean   "t4"
    t.boolean   "t5"
    t.boolean   "t6"
    t.boolean   "t7"
    t.boolean   "t8"
    t.boolean   "t9"
    t.boolean   "t10"
    t.boolean   "t11"
    t.boolean   "t12"
    t.boolean   "t13"
    t.boolean   "t14"
    t.boolean   "t15"
    t.boolean   "t16"
    t.boolean   "t17"
    t.boolean   "t18"
    t.boolean   "t19"
    t.boolean   "t20"
    t.boolean   "t21"
    t.boolean   "t22"
    t.boolean   "t23"
    t.boolean   "t24"
    t.boolean   "t25"
    t.datetime "created_at"
    t.datetime "updated_at"
  end


  create_table "truckmetrics", force: true do |t|
    t.string   "equipment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status_category"
    t.float   "duration"
    t.datetime "date"
  end

  end
end
