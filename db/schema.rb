# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_20_081021) do
  create_table "nice_restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "rating", default: 0
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "chef_name"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "nice_restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nice_restaurant_id"], name: "index_reviews_on_nice_restaurant_id"
  end

  add_foreign_key "reviews", "nice_restaurants"
end
