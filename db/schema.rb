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

ActiveRecord::Schema.define(version: 2018_08_19_061111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.integer "age"
    t.date "date_of_birth"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles_social_profiles", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "social_profile_id", null: false
  end

  create_table "social_profiles", force: :cascade do |t|
    t.string "social_profile_type"
    t.string "profile_url"
    t.string "avatar_url"
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "profiles_social_profiles", "profiles"
  add_foreign_key "profiles_social_profiles", "social_profiles"
end
