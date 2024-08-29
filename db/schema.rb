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

ActiveRecord::Schema[7.2].define(version: 2024_08_29_182912) do
  create_table "blocks", force: :cascade do |t|
    t.string "zip_code"
    t.string "neighborhood"
    t.string "street"
    t.integer "number"
    t.string "additional_information"
    t.float "latitude"
    t.float "longitude"
    t.integer "fee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fee_id"], name: "index_blocks_on_fee_id"
  end

  create_table "fees", force: :cascade do |t|
    t.string "name"
    t.float "price_per_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.float "length"
    t.float "width"
    t.float "price_multiplier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blocks", "fees"
end
