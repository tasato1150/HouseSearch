# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_22_142608) do

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text"
    t.bigint "user_id"
    t.bigint "property_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_comments_on_property_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "src"
    t.bigint "property_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_images_on_property_id"
  end

  create_table "likes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "property_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_likes_on_property_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "properties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.integer "rent", null: false
    t.integer "deposit", null: false
    t.text "other_charge"
    t.integer "prefectures_id", null: false
    t.integer "municipalities_id", null: false
    t.integer "route_id", null: false
    t.integer "station_id", null: false
    t.integer "occupied_area", null: false
    t.integer "floor_plan_id", null: false
    t.integer "minutes_foot_id", null: false
    t.integer "age", null: false
    t.integer "building_structure_id", null: false
    t.integer "position_id", null: false
    t.integer "condition_id", null: false
    t.integer "kitchen_id", null: false
    t.integer "bath_toilet_id", null: false
    t.integer "security_id", null: false
    t.integer "air_conditioning_id", null: false
    t.integer "facility_id", null: false
    t.integer "broadcast_id", null: false
    t.integer "parking_id", null: false
    t.integer "contract_period_id", null: false
    t.integer "current_situation_id", null: false
    t.integer "delivery_id", null: false
    t.integer "renewal_fee_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "properties"
  add_foreign_key "comments", "users"
  add_foreign_key "images", "properties"
  add_foreign_key "likes", "properties"
  add_foreign_key "likes", "users"
  add_foreign_key "properties", "users"
end
