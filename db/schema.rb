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

ActiveRecord::Schema.define(version: 20151207173209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.boolean  "required"
    t.string   "listed_requirments"
    t.integer  "facility_branch_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.integer  "facility_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "facility_branches", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "languages"
    t.string   "telephone_number"
    t.string   "payment_options"
    t.boolean  "co_pay_requirment"
    t.string   "co_payment_range"
    t.string   "cta_bus_transit"
    t.string   "cta_train_transit"
    t.string   "parking"
    t.string   "additonal_notes"
    t.integer  "facility_id"
    t.string   "undocumented_youth_requirments"
    t.string   "hours"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "address"
  end

  create_table "facility_services", force: :cascade do |t|
    t.integer  "facility_branch_id"
    t.integer  "service_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "facility_types", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "substance_abuse_treatment_available"
    t.string   "sexual_reproductive_health_care_available"
    t.string   "hiv_testing_available"
    t.string   "mental_health_care_available"
    t.string   "sti_testing_available"
    t.string   "general_practice_care_available"
    t.string   "dental_available"
    t.string   "vision_available"
    t.string   "abortion_services_available"
    t.string   "prenatal_healthcare_available"
    t.string   "prescribe_psychiatric_medication_available"
    t.string   "preventitive_care_available"
    t.string   "preventitive_care"
    t.string   "pharmacy"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end
