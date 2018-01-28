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

ActiveRecord::Schema.define(version: 20180128163114) do

  create_table "customer_tax_zones", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "tax"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_tax_zones", ["customer_id"], name: "index_customer_tax_zones_on_customer_id"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["customer_id"], name: "index_customers_on_customer_id"

  create_table "egc_server_cluster_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quote_request_item_server_id"
    t.integer  "egc_server_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "egc_server_cluster_types", ["egc_server_type_id"], name: "index_egc_server_cluster_types_on_egc_server_type_id"
  add_index "egc_server_cluster_types", ["quote_request_item_server_id"], name: "index_egc_server_cluster_types_on_quote_request_item_server_id"

  create_table "egc_server_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quote_request_item_server_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "egc_server_types", ["quote_request_item_server_id"], name: "index_egc_server_types_on_quote_request_item_server_id"

  create_table "egc_storage_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quote_request_item_storage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "egc_storage_types", ["quote_request_item_storage_id"], name: "index_egc_storage_types_on_quote_request_item_storage_id"

  create_table "hw_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "egc_server_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hw_types", ["egc_server_type_id"], name: "index_hw_types_on_egc_server_type_id"

  create_table "item_price_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.integer  "item_price_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_price_types", ["item_price_id"], name: "index_item_price_types_on_item_price_id"

  create_table "item_prices", force: :cascade do |t|
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.float    "valid_price"
    t.integer  "vendor_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_prices", ["vendor_item_id"], name: "index_item_prices_on_vendor_item_id"

  create_table "os_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "egc_server_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "os_types", ["egc_server_type_id"], name: "index_os_types_on_egc_server_type_id"

  create_table "quote_request_item_servers", force: :cascade do |t|
    t.float    "required_cpu"
    t.integer  "required_ram"
    t.integer  "quote_request_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quote_request_item_servers", ["quote_request_item_id"], name: "index_quote_request_item_servers_on_quote_request_item_id"

  create_table "quote_request_item_storages", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "capacity"
    t.integer  "backup_size"
    t.integer  "quote_request_item_server_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quote_request_items", force: :cascade do |t|
    t.float    "pieces"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quote_requests", force: :cascade do |t|
    t.string   "project"
    t.integer  "customer_id"
    t.datetime "requested_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quote_requests", ["customer_id"], name: "index_quote_requests_on_customer_id"

  create_table "request_statuses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quote_request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "request_statuses", ["quote_request_id"], name: "index_request_statuses_on_quote_request_id"

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendor_item_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "vendor_item_id"
    t.boolean  "active"
    t.integer  "quote_request_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendor_item_types", ["quote_request_item_id"], name: "index_vendor_item_types_on_quote_request_item_id"
  add_index "vendor_item_types", ["vendor_item_id"], name: "index_vendor_item_types_on_vendor_item_id"

  create_table "vendor_items", force: :cascade do |t|
    t.string   "name"
    t.float    "purchased_price"
    t.text     "description"
    t.integer  "vendor_id"
    t.integer  "quote_request_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendor_items", ["quote_request_item_id"], name: "index_vendor_items_on_quote_request_item_id"
  add_index "vendor_items", ["vendor_id"], name: "index_vendor_items_on_vendor_id"

  create_table "vendor_statuses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "account_manager_email"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
