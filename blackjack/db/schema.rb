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

ActiveRecord::Schema.define(version: 2020_03_05_171358) do

  create_table "cards", force: :cascade do |t|
    t.string "suit"
    t.string "value"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dealer_hand_cards", force: :cascade do |t|
    t.integer "dealer_hand_id"
    t.integer "card_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dealer_hands", force: :cascade do |t|
    t.integer "dealer_id"
    t.integer "game_id"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "blackjack?", default: false
  end

  create_table "dealers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "years_experience"
    t.string "casino"
  end

  create_table "games", force: :cascade do |t|
    t.integer "min_bet"
    t.integer "max_bet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_hand_cards", force: :cascade do |t|
    t.integer "player_hand_id"
    t.integer "card_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_hands", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.integer "bet", default: 10
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "blackjack?", default: false
    t.integer "payout"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "security_question"
    t.string "security_answer"
    t.string "name"
    t.integer "age"
    t.integer "bank", default: 2000
  end

end
