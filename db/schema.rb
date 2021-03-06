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

ActiveRecord::Schema.define(version: 20170712102442) do

  create_table "admins", force: :cascade do |t|
    t.string   "email"
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

  create_table "cows", force: :cascade do |t|
    t.string   "cow_owner"
    t.string   "date_of_birth"
    t.integer  "weight"
    t.string   "color"
    t.string   "tag_number"
    t.string   "temperature"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "farmer_id"
    t.integer  "VetOfficer_id"
    t.string   "vetofficer"
    t.index ["VetOfficer_id"], name: "index_cows_on_VetOfficer_id"
    t.index ["farmer_id"], name: "index_cows_on_farmer_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string   "name"
    t.integer  "farm_size"
    t.integer  "number_of_animals"
    t.string   "farm_location"
    t.integer  "phone_number"
    t.string   "address"
    t.string   "profile_pic"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "vet_officers", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "phone_number"
    t.string   "address"
    t.string   "vprofile_pic"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
