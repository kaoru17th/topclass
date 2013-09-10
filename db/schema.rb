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

ActiveRecord::Schema.define(version: 20130910151249) do

  create_table "preregister_subjects", force: true do |t|
    t.integer  "idsemester"
    t.integer  "idsubject"
    t.integer  "iduserstudent"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "program_semesters", force: true do |t|
    t.integer  "idprogram"
    t.integer  "idsemester"
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
  end

  create_table "quota_configs", force: true do |t|
    t.integer  "idsubject"
    t.integer  "ownquota"
    t.integer  "programquota"
    t.integer  "pregradequota"
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
  end

  create_table "subject_programs", force: true do |t|
    t.integer  "idsubject"
    t.integer  "idprogram"
    t.string   "status"
    t.string   "subjecttype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_records", force: true do |t|
    t.integer  "idsemester"
    t.integer  "iduserstudent"
    t.integer  "idsubject"
    t.integer  "iduserteacher"
    t.float    "grade"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_semesters", force: true do |t|
    t.integer  "idsubject"
    t.integer  "idsemester"
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

  create_table "teacher_subjects", force: true do |t|
    t.integer  "iduserteacher"
    t.integer  "idsubject"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_programs", force: true do |t|
    t.integer  "iduser"
    t.integer  "idprogram"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
