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

ActiveRecord::Schema.define(version: 20150514165632) do

  create_table "comments", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "invoices", force: true do |t|
    t.string   "invoice_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.decimal  "amount_paid"
  end

  add_index "invoices", ["user_id"], name: "index_invoices_on_user_id"

  create_table "line_items", force: true do |t|
    t.string   "name"
    t.decimal  "amount"
    t.integer  "quantity"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["invoice_id"], name: "index_line_items_on_invoice_id"

  create_table "memberships", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "business_name"
    t.string   "phone"
    t.string   "email"
    t.text     "business_needs"
    t.text     "business_issues"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "business_name"
    t.string   "business_address"
    t.string   "email"
    t.string   "phone"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "naics_code"
    t.string   "industry"
  end

end
