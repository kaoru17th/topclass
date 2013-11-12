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

ActiveRecord::Schema.define(version: 20131021213118) do

  create_table "preregister_subjects", force: true do |t|
    t.integer  "semester_id"
    t.integer  "subject_id"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  create_table "program_semesters", force: true do |t|
    t.integer  "program_id"
    t.integer  "semester_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "objective"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "programs", ["code"], name: "index_programs_on_code", unique: true

  create_table "quota_configs", force: true do |t|
    t.integer  "subject_id"
    t.integer  "own_quota"
    t.integer  "program_quota"
    t.integer  "pregrade_quota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "startdate"
    t.datetime "finaldate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stype"
  end

  add_index "semesters", ["name"], name: "index_semesters_on_name", unique: true

  create_table "subject_programs", force: true do |t|
    t.integer  "subject_id"
    t.integer  "program_id"
    t.string   "status"
    t.string   "subjecttype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_records", force: true do |t|
    t.integer  "semester_id"
    t.integer  "user_student_id"
    t.integer  "subject_id"
    t.integer  "user_teacher_id"
    t.float    "grade"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_semesters", force: true do |t|
    t.integer  "subject_id"
    t.integer  "semester_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "quota"
    t.integer  "credits"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["code"], name: "index_subjects_on_code", unique: true

  create_table "teacher_subjects", force: true do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_programs", force: true do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_programs", ["user_id", "program_id"], name: "index_user_programs_on_user_id_and_program_id", unique: true

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "identificationtype"
    t.string   "identification"
    t.string   "status"
    t.string   "usertype"
    t.string   "code"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
