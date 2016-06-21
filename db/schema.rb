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

ActiveRecord::Schema.define(version: 20160621015048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mentees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name",             null: false
    t.integer  "consequence"
    t.time     "estimated_length"
    t.datetime "due"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "mentee_id"
    t.integer  "mentor_id"
  end

  add_index "tasks", ["mentee_id"], name: "index_tasks_on_mentee_id", using: :btree
  add_index "tasks", ["mentor_id"], name: "index_tasks_on_mentor_id", using: :btree

end
