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

ActiveRecord::Schema.define(version: 20171213065131) do

  create_table "games", force: :cascade do |t|
    t.string "player_id"
    t.string "one_first"
    t.string "one_second"
    t.string "two_first"
    t.string "two_second"
    t.string "three_first"
    t.string "three_second"
    t.string "four_first"
    t.string "four_second"
    t.string "five_first"
    t.string "five_second"
    t.string "six_first"
    t.string "six_second"
    t.string "seven_first"
    t.string "seven_second"
    t.string "eight_first"
    t.string "eight_second"
    t.string "nine_first"
    t.string "nine_second"
    t.string "ten_first"
    t.string "ten_second"
    t.string "ten_third"
    t.string "final_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
