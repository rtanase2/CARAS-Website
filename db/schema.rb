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

ActiveRecord::Schema.define(version: 20150908213718) do

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
    t.text     "event_name"
    t.text     "jumbotron_img"
    t.text     "img_takers_url"
    t.text     "img_takers_name"
    t.text     "img_license_url"
    t.text     "description"
    t.text     "subheader"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "sponsors"
    t.string   "entertainment"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "state"
    t.string   "language"
    t.string   "tabs"
    t.string   "event_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsorships", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sponsorships", ["event_id"], name: "index_sponsorships_on_event_id"
  add_index "sponsorships", ["sponsor_id"], name: "index_sponsorships_on_sponsor_id"

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
    t.boolean  "volunteer_in_school"
    t.string   "school_name"
    t.string   "school_phone"
    t.date     "start_date"
    t.boolean  "available_days"
    t.boolean  "available_mornings"
    t.boolean  "available_evenings"
    t.text     "availability_by_day"
    t.string   "type_of_service"
    t.string   "name_org"
    t.string   "event"
    t.boolean  "signed_participant"
    t.string   "parent_name"
    t.boolean  "signed_parent"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
