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

ActiveRecord::Schema.define(version: 20160212145247) do

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",        limit: 4
    t.integer  "favorited_id",   limit: 4
    t.string   "favorited_type", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "favorites", ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "omniauths", force: :cascade do |t|
    t.integer "user_id",  limit: 4
    t.string  "provider", limit: 255
    t.string  "uid",      limit: 255
    t.string  "image",    limit: 255
    t.string  "url",      limit: 255
  end

  add_index "omniauths", ["user_id"], name: "index_omniauths_on_user_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "profile_id", limit: 4
    t.string   "photo",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "photos", ["profile_id"], name: "index_photos_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.string   "location",            limit: 255
    t.string   "relationship",        limit: 255
    t.string   "phone",               limit: 255
    t.string   "occupation",          limit: 255
    t.string   "education",           limit: 255
    t.string   "hobbies",             limit: 255
    t.text     "bio",                 limit: 65535
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.string   "photo1_file_name",    limit: 255
    t.string   "photo1_content_type", limit: 255
    t.integer  "photo1_file_size",    limit: 4
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name",    limit: 255
    t.string   "photo2_content_type", limit: 255
    t.integer  "photo2_file_size",    limit: 4
    t.datetime "photo2_updated_at"
    t.string   "photo3_file_name",    limit: 255
    t.string   "photo3_content_type", limit: 255
    t.integer  "photo3_file_size",    limit: 4
    t.datetime "photo3_updated_at"
    t.string   "photo4_file_name",    limit: 255
    t.string   "photo4_content_type", limit: 255
    t.integer  "photo4_file_size",    limit: 4
    t.datetime "photo4_updated_at"
    t.string   "photo5_file_name",    limit: 255
    t.string   "photo5_content_type", limit: 255
    t.integer  "photo5_file_size",    limit: 4
    t.datetime "photo5_updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "uploads", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.integer  "age",                    limit: 4
    t.string   "sex",                    limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "favorites", "users"
  add_foreign_key "omniauths", "users"
  add_foreign_key "photos", "profiles"
  add_foreign_key "profiles", "users"
end
