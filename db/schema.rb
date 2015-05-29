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

ActiveRecord::Schema.define(version: 20150513075524) do

  create_table "deliveries", force: :cascade do |t|
    t.string   "method",     limit: 255
    t.decimal  "price",                  precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "month",       limit: 4
    t.decimal  "payment_sum",           precision: 10
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "user_id",     limit: 4
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             limit: 255,                 null: false
    t.string   "last_name",              limit: 255,                 null: false
    t.string   "email",                  limit: 255,                 null: false
    t.date     "birthdate",                                          null: false
    t.string   "avatar",                 limit: 255
    t.string   "password_digest",        limit: 255,                 null: false
    t.boolean  "admin",                  limit: 1,   default: false, null: false
    t.string   "remember_token",         limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "password_resets_token",  limit: 255
    t.datetime "password_reset_sent_at"
  end

end