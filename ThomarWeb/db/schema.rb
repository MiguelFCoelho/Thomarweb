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

ActiveRecord::Schema.define(version: 20170425153129) do

  create_table "accesses", force: :cascade do |t|
    t.datetime "date"
    t.text     "nationality"
    t.text     "os"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "uuid"
    t.integer  "beacon_id"
    t.index ["beacon_id"], name: "index_accesses_on_beacon_id"
  end

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "beacons", force: :cascade do |t|
    t.text     "uuid"
    t.text     "manufacturer"
    t.text     "battery"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monuments", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "image"
    t.float    "longitude"
    t.float    "latitude"
    t.text     "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_monuments_on_category_id"
  end

  create_table "pois", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "image"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "monument_id"
    t.integer  "beacon_id"
    t.index ["beacon_id"], name: "index_pois_on_beacon_id"
    t.index ["monument_id"], name: "index_pois_on_monument_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end