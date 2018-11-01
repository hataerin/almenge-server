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

ActiveRecord::Schema.define(version: 20181101043436) do

  create_table "archives", force: :cascade do |t|
    t.string   "archive_title"
    t.string   "archive_content"
    t.datetime "archive_upload_at"
    t.string   "attachment"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "project_meetings", force: :cascade do |t|
    t.integer  "project_meeting_id"
    t.string   "project_meeting_photo"
    t.string   "absentee"
    t.string   "project_meeting_memo"
    t.datetime "project_meeting_upload_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "project_profiles", force: :cascade do |t|
    t.string   "project_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "project_weeklies", force: :cascade do |t|
    t.integer  "project_week"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "session_attendances", force: :cascade do |t|
    t.integer  "session_info_id"
    t.integer  "user_id"
    t.integer  "session_attendance"
    t.integer  "late"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "session_infos", force: :cascade do |t|
    t.datetime "session_datetime"
    t.string   "session_place"
    t.string   "session_activity"
    t.string   "session_content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           default: "", null: false
    t.string   "password_digest", default: "", null: false
    t.string   "name",                         null: false
    t.date     "birthday",                     null: false
    t.integer  "session_absence", default: 0,  null: false
    t.integer  "project_absence", default: 0,  null: false
    t.integer  "penalty",         default: 0,  null: false
    t.integer  "project_id",                   null: false
    t.string   "user_photo",                   null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
