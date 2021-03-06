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

ActiveRecord::Schema.define(version: 20140428190741) do

  create_table "abouts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classrooms", id: false, force: true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.string   "paid",          limit: 1
    t.date     "payment_date"
    t.date     "validity_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "classrooms", ["course_id"], name: "index_classrooms_on_course_id", using: :btree
  add_index "classrooms", ["user_id"], name: "index_classrooms_on_user_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "workload"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "max_cap"
    t.integer  "min_cap"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "login",              default: "", null: false
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.string   "name"
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "type"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "facebook"
    t.string   "rg"
    t.string   "cpf"
    t.datetime "entry_date"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "twitter"
    t.string   "github"
    t.string   "gplus"
    t.string   "linkedin"
    t.string   "image"
    t.text     "knwoledge_area"
    t.string   "bio"
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree

end
