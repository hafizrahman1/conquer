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

ActiveRecord::Schema.define(version: 20161115230525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "phobias", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.string "resources",   array: true
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "phobia_id"
    t.text    "description"
    t.integer "deadline"
  end

  create_table "user_phobias", force: :cascade do |t|
    t.integer "user_id"
    t.integer "phobia_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.string  "gender"
    t.integer "weight"
    t.integer "height"
    t.string  "bio"
  end

end
