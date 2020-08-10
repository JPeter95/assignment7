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

ActiveRecord::Schema.define(version: 2020_08_10_040025) do

  create_table "accounts", force: :cascade do |t|
    t.string "gender"
    t.integer "age"
    t.string "first_name"
    t.string "last_name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags_todo_items", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "todo_item_id", null: false
    t.index ["tag_id"], name: "index_tags_todo_items_on_tag_id"
    t.index ["todo_item_id"], name: "index_tags_todo_items_on_todo_item_id"
  end

  create_table "todo_items", force: :cascade do |t|
    t.datetime "due_date"
    t.string "task_title"
    t.string "description"
    t.integer "todo_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "done"
    t.index ["todo_list_id"], name: "index_todo_items_on_todo_list_id"
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "list_name"
    t.datetime "list_due_date"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_todo_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "tags_todo_items", "tags"
  add_foreign_key "tags_todo_items", "todo_items"
  add_foreign_key "todo_items", "todo_lists"
  add_foreign_key "todo_lists", "users"
end
