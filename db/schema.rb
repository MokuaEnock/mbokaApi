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

ActiveRecord::Schema[7.0].define(version: 2023_05_22_164009) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "seeker_details", force: :cascade do |t|
    t.bigint "seeker_id", null: false
    t.string "first_name"
    t.string "second_name"
    t.string "third_name"
    t.integer "phone_number"
    t.date "dob"
    t.string "gender"
    t.string "nationality"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seeker_id"], name: "index_seeker_details_on_seeker_id"
  end

  create_table "seekers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "seeker_details", "seekers"
end
