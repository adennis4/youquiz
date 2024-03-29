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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120413213003) do

  create_table "assessments", :force => true do |t|
    t.string   "grade_received"
    t.string   "student_responses"
    t.integer  "quiz_id"
    t.integer  "student_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "quizzes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "grade_level"
    t.text     "questions"
    t.text     "correct_responses"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "video_url"
    t.integer  "subject_id"
  end

  create_table "quizzes_teachers", :id => false, :force => true do |t|
    t.integer "teacher_id"
    t.integer "quiz_id"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students_subjects", :id => false, :force => true do |t|
    t.integer "student_id"
    t.integer "subject_id"
  end

  create_table "subjects", :force => true do |t|
    t.datetime "start_time"
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subjects_teachers", :id => false, :force => true do |t|
    t.integer "subject_id"
    t.integer "teacher_id"
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "school"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
