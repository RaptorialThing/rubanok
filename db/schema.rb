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

ActiveRecord::Schema.define(version: 2022_02_11_135614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banker_proccesses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "user_account_id"
    t.integer "amount"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_account_id"], name: "index_banker_proccesses_on_user_account_id"
    t.index ["user_id"], name: "index_banker_proccesses_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.text "description"
    t.bigint "printer_id"
    t.bigint "user_id"
    t.bigint "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["printer_id"], name: "index_orders_on_printer_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "printers", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_printers_on_user_id"
  end

  create_table "user_accounts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "currency"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_accounts_on_user_id"
  end

  create_table "user_credits", force: :cascade do |t|
    t.bigint "user_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_account_id"], name: "index_user_credits_on_user_account_id"
  end

  create_table "user_deposits", force: :cascade do |t|
    t.bigint "user_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_account_id"], name: "index_user_deposits_on_user_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_banker"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
