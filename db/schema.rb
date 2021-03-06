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

ActiveRecord::Schema.define(version: 20161110012128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "tap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faucets", force: :cascade do |t|
    t.string   "category"
    t.string   "manufacturer"
    t.string   "model"
    t.string   "discription"
    t.string   "main_img"
    t.integer  "sellingprice"
    t.integer  "properprice"
    t.integer  "discountrate"
    t.integer  "buyingprice"
    t.string   "fn1_title"
    t.string   "fn1_img"
    t.string   "fn1_content"
    t.string   "fn1_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "managements", force: :cascade do |t|
    t.integer  "kbratio"
    t.string   "oasyssegment"
    t.string   "companyname"
    t.string   "branch"
    t.string   "postalcode"
    t.string   "address"
    t.string   "tel"
    t.string   "oasyseigyo"
    t.string   "contractor"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "pj_name"
    t.integer  "management_id"
    t.integer  "originalkbratio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
