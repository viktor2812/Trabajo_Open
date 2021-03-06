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

ActiveRecord::Schema.define(version: 20160913224318) do

  create_table "clients", force: :cascade do |t|
    t.string   "tipo_client"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "company_rfc"
    t.string   "company_address"
    t.integer  "company_ext_num"
    t.integer  "company_int_num"
    t.string   "company_neighborhood"
    t.string   "company_city"
    t.integer  "company_zip"
    t.integer  "company_telephone"
    t.integer  "company_extension"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "rfc"
    t.string   "address"
    t.integer  "ext_num"
    t.integer  "int_num"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "country"
    t.integer  "zip"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.string   "repuve"
    t.string   "rapi"
    t.string   "amis"
    t.string   "transunion"
    t.string   "ci_auto"
    t.string   "agency_invoice_ok"
    t.string   "ine_ok"
    t.string   "buho_ok"
    t.string   "invoice_sat_ok"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "motors", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.integer  "year"
    t.string   "serie_chasis"
    t.string   "serie_engine"
    t.string   "commercial_cost"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "others", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "residences", force: :cascade do |t|
    t.string   "description"
    t.integer  "year"
    t.string   "street"
    t.integer  "ext_numb"
    t.integer  "int_numb"
    t.string   "neighborhood"
    t.string   "city"
    t.integer  "zip"
    t.integer  "commercial_cost"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "warranties", force: :cascade do |t|
    t.string   "tipo_warranty"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
