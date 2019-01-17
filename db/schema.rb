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

ActiveRecord::Schema.define(version: 2019_01_17_160839) do

  create_table "allergens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergens_ingredients", force: :cascade do |t|
    t.integer "allergen_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergen_id"], name: "index_allergens_ingredients_on_allergen_id"
    t.index ["ingredient_id"], name: "index_allergens_ingredients_on_ingredient_id"
  end

  create_table "allergens_replaced_ingredients", force: :cascade do |t|
    t.integer "allergen_id"
    t.integer "replaced_ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergen_id"], name: "index_allergens_replaced_ingredients_on_allergen_id"
    t.index ["replaced_ingredient_id"], name: "index_allergens_replaced_ingredients_on_replaced_ingredient_id"
  end

  create_table "allergens_users", force: :cascade do |t|
    t.integer "allergen_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergen_id"], name: "index_allergens_users_on_allergen_id"
    t.index ["user_id"], name: "index_allergens_users_on_user_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "receipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipe_id"], name: "index_bookmarks_on_receipe_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "cooking_steps", force: :cascade do |t|
    t.integer "receipe_id"
    t.integer "number"
    t.string "description"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipe_id"], name: "index_cooking_steps_on_receipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "receipe_id"
    t.string "name"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipe_id"], name: "index_ingredients_on_receipe_id"
  end

  create_table "receipe_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipe_evaluations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "receipe_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipe_id"], name: "index_receipe_evaluations_on_receipe_id"
    t.index ["user_id"], name: "index_receipe_evaluations_on_user_id"
  end

  create_table "receipes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "receipe_category_id"
    t.string "title"
    t.string "introduction"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipe_category_id"], name: "index_receipes_on_receipe_category_id"
    t.index ["user_id"], name: "index_receipes_on_user_id"
  end

  create_table "replaced_ingredients", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ingredient_id"
    t.index ["ingredient_id"], name: "index_replaced_ingredients_on_ingredient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "image_path"
    t.boolean "registration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
  end

end
