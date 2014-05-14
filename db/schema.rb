# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140514184921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "score_team_a"
    t.integer  "score_team_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "nr"
    t.string   "team_a"
    t.string   "team_b"
    t.integer  "score_ta"
    t.integer  "score_tb"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "dt_game"
    t.time     "hr_game"
  end

  create_table "users", force: true do |t|
    t.string   "sid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
