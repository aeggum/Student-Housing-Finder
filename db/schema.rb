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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120508235454) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "landlords", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.boolean  "verified"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "listings", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.float    "bathrooms"
    t.integer  "bedrooms"
    t.integer  "rent"
    t.integer  "squarefeet"
    t.boolean  "smoking"
    t.boolean  "heat"
    t.boolean  "electric"
    t.integer  "flags"
    t.boolean  "gas"
    t.boolean  "garbagecollection"
    t.integer  "length"
    t.boolean  "furnished"
    t.boolean  "laundry"
    t.boolean  "parking"
    t.boolean  "pets"
    t.boolean  "ltype"
    t.integer  "user_id"
    t.string   "aptnum"
    t.string   "building_name"
    t.integer  "landlord_id"
    t.integer  "region"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "house"
    t.boolean  "apt"
    t.boolean  "flat"
    t.boolean  "coop"
    t.boolean  "cats"
    t.boolean  "dogs"
    t.string   "image"
  end

  add_index "listings", ["address"], :name => "index_listings_on_address"
  add_index "listings", ["building_name"], :name => "index_listings_on_building_name"
  add_index "listings", ["landlord_id"], :name => "index_listings_on_landlord_id"
  add_index "listings", ["rent"], :name => "index_listings_on_rent"

  create_table "reviews", :force => true do |t|
    t.text     "body"
    t.float    "rating"
    t.integer  "helpfulness"
    t.integer  "flags"
    t.integer  "listing_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
