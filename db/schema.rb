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

ActiveRecord::Schema.define(version: 20150503213421) do

  create_table "groups", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "branch"
    t.integer  "course"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "qualification"
  end

  create_table "students", force: :cascade do |t|
    t.string   "last_name",            null: false
    t.string   "first_name",           null: false
    t.string   "middle_name",          null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "group_id"
    t.date     "birth_date"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.boolean  "class_monitor"
    t.float    "rating"
    t.integer  "code"
    t.integer  "gender"
    t.string   "passport_ser"
    t.string   "passport_num"
    t.string   "passport_issue_where"
    t.date     "passport_issue_when"
  end

  add_index "students", ["group_id"], name: "index_students_on_group_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
