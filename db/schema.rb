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

ActiveRecord::Schema.define(version: 20171125132820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.boolean  "available"
    t.boolean  "maybe"
    t.boolean  "unavailable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "day_id"
    t.index ["day_id"], name: "index_availabilities_on_day_id", using: :btree
    t.index ["user_id"], name: "index_availabilities_on_user_id", using: :btree
  end

  create_table "calendar_days", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "calendar_id"
    t.integer  "day_id"
    t.index ["calendar_id"], name: "index_calendar_days_on_calendar_id", using: :btree
    t.index ["day_id"], name: "index_calendar_days_on_day_id", using: :btree
  end

  create_table "calendars", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "url"
    t.string   "days_of_week", default: [],              array: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "days", force: :cascade do |t|
    t.datetime "date"
    t.string   "day"
    t.string   "month"
    t.string   "year"
    t.boolean  "bank_holiday"
    t.boolean  "weekday"
    t.boolean  "weekend"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "availabilities", "days"
  add_foreign_key "availabilities", "users"
  add_foreign_key "calendar_days", "calendars"
  add_foreign_key "calendar_days", "days"
end
