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

ActiveRecord::Schema.define(version: 20180203191755) do

  create_table "captured_violator_placeholders", force: :cascade do |t|
    t.string  "capture_date"
    t.string  "license_plate_text"
    t.string  "car_image_filename"
    t.string  "license_plate_image_filename"
    t.string  "video_filename"
    t.string  "violation"
    t.string  "location"
    t.boolean "encoded",                      default: false
  end

  create_table "captured_violators", force: :cascade do |t|
    t.string   "license_plate_text"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "image_evidences", force: :cascade do |t|
    t.integer  "offense_id"
    t.string   "capture_year"
    t.string   "capture_month"
    t.string   "capture_day"
    t.string   "capture_hour"
    t.string   "capture_minute"
    t.string   "capture_second"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "live_vehicles", force: :cascade do |t|
    t.string  "capture_date"
    t.string  "license_plate_text"
    t.string  "car_image_filename"
    t.string  "license_plate_image_filename"
    t.string  "video_filename"
    t.string  "violation"
    t.string  "location"
    t.boolean "encoded",                      default: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offenses", force: :cascade do |t|
    t.integer  "captured_violator_id"
    t.integer  "violation_id"
    t.datetime "capture_date"
    t.string   "car_image_filename"
    t.string   "license_plate_image_filename"
    t.string   "video_filename"
    t.string   "location"
    t.string   "penalty"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["captured_violator_id"], name: "index_offenses_on_captured_violator_id"
    t.index ["violation_id"], name: "index_offenses_on_violation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "violations", force: :cascade do |t|
    t.string   "name"
    t.decimal  "fixed_penalty",          default: "0.0"
    t.decimal  "first_offense_penalty"
    t.decimal  "second_offense_penalty"
    t.decimal  "third_offense_penalty"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
