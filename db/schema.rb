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

ActiveRecord::Schema.define(version: 20160913060834) do

  create_table "employers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "post_id"
  end

  add_index "employers", ["email"], name: "index_employers_on_email", unique: true
  add_index "employers", ["post_id"], name: "index_employers_on_post_id"
  add_index "employers", ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true

  create_table "job_applications", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "job_applications", ["job_id"], name: "index_job_applications_on_job_id"
  add_index "job_applications", ["student_id"], name: "index_job_applications_on_student_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "job_title"
    t.text     "job_description"
    t.decimal  "salary"
    t.string   "city"
    t.integer  "employer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id"

  create_table "openings", force: :cascade do |t|
    t.string   "company"
    t.string   "job_title"
    t.text     "job_description"
    t.string   "job_type"
    t.decimal  "salalry"
    t.string   "city"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "profilename"
    t.string   "designation"
    t.string   "department"
    t.string   "university"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "profilename"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "mobile_no"
    t.string   "linked_in_url"
    t.string   "current_location"
    t.string   "total_work_experience"
    t.string   "current_industry"
    t.string   "key_skills"
    t.string   "resume_headline"
    t.string   "basic_graduation"
    t.string   "post_graduation"
    t.string   "doctorate_phd"
    t.string   "certification1"
    t.string   "certification2"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
