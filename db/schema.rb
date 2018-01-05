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

ActiveRecord::Schema.define(version: 20180105100145) do

  create_table "captured_violators", force: :cascade do |t|
    t.datetime "capture_date"
    t.string   "raw_image"
    t.string   "license_plate_image"
    t.string   "violation"
    t.string   "location"
    t.string   "penalty_amount"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "license_plate_text"
    t.string   "raw_image_orig_path"
    t.string   "license_plate_image_orig_path"
    t.string   "capture_year"
    t.string   "capture_month"
    t.string   "capture_day"
    t.string   "capture_hour"
  end

  create_table "image_evidences", force: :cascade do |t|
    t.integer  "captured_violator_id"
    t.string   "capture_year"
    t.string   "capture_month"
    t.string   "capture_day"
    t.string   "capture_hour"
    t.string   "capture_minute"
    t.string   "capture_second"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
