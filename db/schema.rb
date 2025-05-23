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

ActiveRecord::Schema[7.2].define(version: 2024_12_28_144709) do
  create_table "attendances", force: :cascade do |t|
    t.string "note"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "worked_on"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "training_histories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "body_part"
    t.text "content"
    t.float "weight"
    t.integer "sets"
    t.integer "reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_training_histories_on_user_id"
  end

  create_table "training_menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "training_parts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_training_menus", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "training_menu_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_menu_id"], name: "index_user_training_menus_on_training_menu_id"
    t.index ["user_id"], name: "index_user_training_menus_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "remember_digest"
    t.string "department"
    t.string "training_menu"
    t.string "arms"
    t.string "abs"
    t.string "back"
    t.string "chest"
    t.string "shoulder"
    t.string "thighs"
  end

  add_foreign_key "attendances", "users"
  add_foreign_key "training_histories", "users"
  add_foreign_key "user_training_menus", "training_menus"
  add_foreign_key "user_training_menus", "users"
end
