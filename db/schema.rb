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

ActiveRecord::Schema.define(version: 20170413233842) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "resource_id",    null: false
    t.string   "street_address", null: false
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "addresses", ["resource_id"], name: "index_addresses_on_resource_id"

  create_table "categories", force: :cascade do |t|
    t.string   "category_type", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "resource_categories", force: :cascade do |t|
    t.integer  "resource_id", null: false
    t.integer  "category_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resource_categories", ["category_id"], name: "index_resource_categories_on_category_id"
  add_index "resource_categories", ["resource_id"], name: "index_resource_categories_on_resource_id"

  create_table "resource_services", force: :cascade do |t|
    t.integer  "resource_id", null: false
    t.integer  "service_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "resource_services", ["resource_id"], name: "index_resource_services_on_resource_id"
  add_index "resource_services", ["service_id"], name: "index_resource_services_on_service_id"

  create_table "resources", force: :cascade do |t|
    t.string   "organization", null: false
    t.string   "description"
    t.string   "phone_number"
    t.string   "website"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "service_type", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
