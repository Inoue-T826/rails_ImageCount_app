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

ActiveRecord::Schema[7.0].define(version: 2024_10_19_145404) do
  create_table "clicks", force: :cascade do |t|
    t.integer "page"
    t.string "area"
    t.integer "trial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "button"
    t.index ["trial_id"], name: "index_clicks_on_trial_id"
  end

  create_table "trials", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clicks", "trials"
end
