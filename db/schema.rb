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

ActiveRecord::Schema.define(:version => 20111210234545) do

  create_table "contacts", :force => true do |t|
    t.string   "phone"
    t.string   "email"
    t.string   "home"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contactable_id"
    t.string   "contactable_type"
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
