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

ActiveRecord::Schema.define(version: 2018_08_26_060936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.bigint "country_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["name", "country_id"], name: "index_cities_on_name_and_country_id", unique: true
    t.index ["name"], name: "index_cities_on_name"
  end

  create_table "cities_profiles", id: false, force: :cascade do |t|
    t.bigint "city_id", null: false
    t.bigint "profile_id", null: false
  end

  create_table "cities_social_profiles", id: false, force: :cascade do |t|
    t.bigint "city_id", null: false
    t.bigint "social_profile_id", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name", unique: true
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.bigint "city_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_neighbourhoods_on_city_id"
    t.index ["name", "city_id"], name: "index_neighbourhoods_on_name_and_city_id", unique: true
    t.index ["name"], name: "index_neighbourhoods_on_name"
  end

  create_table "neighbourhoods_profiles", id: false, force: :cascade do |t|
    t.bigint "neighbourhood_id", null: false
    t.bigint "profile_id", null: false
  end

  create_table "neighbourhoods_social_profiles", id: false, force: :cascade do |t|
    t.bigint "neighbourhood_id", null: false
    t.bigint "social_profile_id", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone"], name: "index_phones_on_phone", unique: true
  end

  create_table "phones_profiles", id: false, force: :cascade do |t|
    t.bigint "phone_id", null: false
    t.bigint "profile_id", null: false
  end

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

  create_table "profiles_stigmas", id: false, force: :cascade do |t|
    t.bigint "stigma_id", null: false
    t.bigint "profile_id", null: false
    t.integer "up_votes", default: 0, null: false
    t.integer "down_votes", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "stigmas", force: :cascade do |t|
    t.string "stigma_type", null: false
    t.string "icon_url"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stigma_type", "name"], name: "index_stigmas_on_stigma_type_and_name", unique: true
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "cities_profiles", "cities"
  add_foreign_key "cities_profiles", "profiles"
  add_foreign_key "cities_social_profiles", "cities"
  add_foreign_key "cities_social_profiles", "social_profiles"
  add_foreign_key "neighbourhoods", "cities"
  add_foreign_key "neighbourhoods_profiles", "neighbourhoods"
  add_foreign_key "neighbourhoods_profiles", "profiles"
  add_foreign_key "neighbourhoods_social_profiles", "neighbourhoods"
  add_foreign_key "neighbourhoods_social_profiles", "social_profiles"
  add_foreign_key "profiles_social_profiles", "profiles"
  add_foreign_key "profiles_social_profiles", "social_profiles"
end
