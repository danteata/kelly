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

ActiveRecord::Schema.define(:version => 20111214130912) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "activities", :force => true do |t|
    t.date     "date"
    t.integer  "driver_id"
    t.integer  "equipment_id"
    t.integer  "supervisor_id"
    t.string   "location"
    t.text     "purpose"
    t.datetime "time_out"
    t.datetime "time_in"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "contacts", :force => true do |t|
    t.string   "phone"
    t.string   "email"
    t.string   "home"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contactable_id"
    t.string   "contactable_type"
  end

  create_table "daily_reports", :force => true do |t|
    t.integer  "supervisor_id"
    t.text     "comment"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", :force => true do |t|
    t.integer  "equipment_id"
    t.integer  "supervisor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", :force => true do |t|
    t.string   "asset_code"
    t.text     "description"
    t.string   "asset_subclass"
    t.string   "product_pin"
    t.string   "model"
    t.string   "registration_no"
    t.integer  "num_of_tyres"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuel_intakes", :force => true do |t|
    t.integer  "fuel_id"
    t.decimal  "quantity"
    t.decimal  "price_per_litre"
    t.integer  "distance_covered"
    t.integer  "equipment_id"
    t.integer  "employee_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuel_managers", :force => true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuel_refills", :force => true do |t|
    t.integer  "fuel_id"
    t.decimal  "quantity"
    t.decimal  "price_per_litre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuels", :force => true do |t|
    t.string   "name"
    t.integer  "total_qty",       :default => 0, :null => false
    t.integer  "price_per_litre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "images", ["imageable_id"], :name => "index_images_on_imageable_id"

  create_table "managers", :force => true do |t|
    t.string   "password_digest"
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.string   "fName"
    t.string   "oName"
    t.string   "lName"
    t.date     "dob"
    t.date     "dateEmployed"
    t.integer  "empId"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profileable_id"
    t.string   "profileable_type"
  end

  create_table "supervisors", :force => true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
