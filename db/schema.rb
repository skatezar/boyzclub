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

ActiveRecord::Schema[7.0].define(version: 2022_08_10_140615) do
  create_table "watches", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "reference_link"
    t.string "condition"
    t.string "production_year"
    t.string "original_box"
    t.string "original_papers"
    t.string "location"
    t.string "listing_code"
    t.string "brand"
    t.string "model"
    t.string "reference_number"
    t.string "movement"
    t.string "case_material"
    t.string "bracelet_material"
  end

end
