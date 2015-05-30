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

ActiveRecord::Schema.define(version: 20150530211042) do

  create_table "disciplines", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "branch"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "qualification"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "discipline_id"
    t.integer  "teacher_id"
    t.date     "date_start"
    t.date     "date_end"
    t.string   "classroom"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "weekday"
    t.string   "pair"
    t.string   "lesson_type"
  end

  add_index "lessons", ["group_id"], name: "index_lessons_on_group_id"

  create_table "marks", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "discipline_id"
    t.integer  "m1"
    t.integer  "m2"
    t.integer  "test"
    t.integer  "exam"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "last_name",          null: false
    t.string   "first_name",         null: false
    t.string   "middle_name",        null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "group_id"
    t.date     "birth_date"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.float    "rating"
    t.integer  "code"
    t.string   "passport_num"
    t.string   "passport_where"
    t.date     "passport_when"
    t.boolean  "class_monitor"
    t.string   "sex"
  end

  add_index "students", ["group_id"], name: "index_students_on_group_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.date     "birth_date"
    t.integer  "gender"
    t.string   "cathedra"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
