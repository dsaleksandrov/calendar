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

ActiveRecord::Schema.define(:version => 20120210234724) do

  create_table "lessons", :force => true do |t|
    t.integer  "lesson_number"
    t.string   "part_name"
    t.integer  "weeks_number"
    t.integer  "hours_count"
    t.string   "lesson_type"
    t.string   "manual"
    t.string   "student_tasks"
    t.string   "student_homeworks"
    t.integer  "plan_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "plans", :force => true do |t|
    t.string   "predmet"
    t.string   "prepod"
    t.string   "spec"
    t.string   "grups"
    t.string   "kurs"
    t.string   "semestr"
    t.string   "god"
    t.string   "accepted"
    t.integer  "week_count"
    t.integer  "lecture_count"
    t.integer  "labs_count"
    t.integer  "kurs_project"
    t.integer  "itself_load"
    t.string   "literature"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
