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

ActiveRecord::Schema.define(version: 20150829191139) do

  create_table "car_show_participants", force: :cascade do |t|
    t.boolean  "paid"
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "year"
    t.string   "make"
    t.boolean  "signed"
    t.datetime "submission_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cook_off_participants", force: :cascade do |t|
    t.string   "region_of_tamale"
    t.string   "name"
    t.text     "fillings_ingredients"
    t.string   "company_org"
    t.string   "contact_person"
    t.string   "phone_number"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "entertainers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.time     "time_playing"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "events", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.date     "date"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "state"
    t.string   "path"
    t.string   "language"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pages", force: :cascade do |t|
    t.text   "innerHTML"
    t.string "title"
    t.string "lang"
    t.text   "jumbotronTitle"
    t.text   "jumbotronDesc"
    t.text   "jumbotronImagePath"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "business_name"
    t.string   "owner_name"
    t.string   "owner_street_address"
    t.string   "owner_city"
    t.string   "owner_zip"
    t.string   "business_home_number"
    t.string   "cell_number"
    t.string   "email"
    t.time     "food_service_time"
    t.string   "facility_type"
    t.string   "permit_types"
    t.time     "food_prep_start"
    t.string   "name_of_temp_facility"
    t.string   "person_in_charge"
    t.string   "person_in_charge_cell"
    t.string   "covering_type"
    t.string   "flooring_type"
    t.string   "wall_type"
    t.string   "booth_supplier"
    t.string   "app_sign"
    t.date     "app_sign_date"
    t.string   "comm_kitch"
    t.string   "comm_kitch_address"
    t.string   "comm_kitch_phone"
    t.string   "comm_kitch_times_used"
    t.boolean  "valid_health_permit"
    t.string   "facility_number"
    t.boolean  "facility_outside_scc"
    t.string   "health_permit_link"
    t.string   "name_permit_holder"
    t.string   "comm_kitch_signature"
    t.date     "comm_kitch_sign_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "zip"
    t.string   "phone"
    t.string   "age"
    t.string   "school_name"
    t.string   "school_phone"
    t.string   "availability"
    t.string   "name_org"
    t.boolean  "signed_participant"
    t.string   "parent_name"
    t.boolean  "signed_parent"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
