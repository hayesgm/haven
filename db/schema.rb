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

ActiveRecord::Schema.define(version: 20140924074946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leases", force: true do |t|
    t.integer  "tenant_id"
    t.integer  "unit_id"
    t.decimal  "payment_amount"
    t.boolean  "acitve"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leases", ["tenant_id"], name: "index_leases_on_tenant_id", using: :btree
  add_index "leases", ["unit_id"], name: "index_leases_on_unit_id", using: :btree

  create_table "tenants", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tenants", ["confirmation_token"], name: "index_tenants_on_confirmation_token", unique: true, using: :btree
  add_index "tenants", ["email"], name: "index_tenants_on_email", unique: true, using: :btree
  add_index "tenants", ["reset_password_token"], name: "index_tenants_on_reset_password_token", unique: true, using: :btree
  add_index "tenants", ["unlock_token"], name: "index_tenants_on_unlock_token", unique: true, using: :btree

  create_table "units", force: true do |t|
    t.integer  "lessor_id"
    t.string   "address"
    t.string   "unit_number"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.decimal  "total_rent"
    t.integer  "payment_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["lessor_id"], name: "index_units_on_lessor_id", using: :btree

end
