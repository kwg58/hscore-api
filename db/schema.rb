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

ActiveRecord::Schema.define(version: 20160807032554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assists", force: :cascade do |t|
    t.integer  "goal_id"
    t.integer  "player_id"
    t.integer  "assist_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.date     "date"
    t.string   "time"
    t.string   "location"
    t.string   "status"
    t.integer  "periodlength"
    t.string   "official1"
    t.string   "official2"
    t.string   "official3"
    t.integer  "hometeam_id"
    t.integer  "awayteam_id"
    t.integer  "homescore1"
    t.integer  "homescore2"
    t.integer  "homescore3"
    t.integer  "homescoreOT"
    t.integer  "homescorefinal"
    t.integer  "awayscore1"
    t.integer  "awayscore2"
    t.integer  "awayscore3"
    t.integer  "awayscoreOT"
    t.integer  "awayscorefinal"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.integer  "tie"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "goalies", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "time_played"
    t.integer  "goals_against"
    t.integer  "win"
    t.integer  "loss"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "player_id"
    t.integer  "period"
    t.string   "time"
    t.string   "situation"
    t.integer  "goalie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infractions", force: :cascade do |t|
    t.string   "infraction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "penalties", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "period"
    t.string   "time"
    t.integer  "player_id"
    t.integer  "infraction"
    t.integer  "duration"
    t.string   "shorthanded"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "fullname"
    t.string   "phone"
    t.string   "email"
    t.integer  "jerseynumber"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "fullname"
    t.string   "shortname"
    t.string   "contact"
    t.string   "contactemail"
    t.string   "contactphone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "assists", "goals"
  add_foreign_key "assists", "players"
  add_foreign_key "games", "teams", column: "awayteam_id"
  add_foreign_key "games", "teams", column: "hometeam_id"
  add_foreign_key "games", "teams", column: "loser_id"
  add_foreign_key "games", "teams", column: "winner_id"
  add_foreign_key "goalies", "games"
  add_foreign_key "goalies", "players"
  add_foreign_key "goals", "games"
  add_foreign_key "goals", "players"
  add_foreign_key "goals", "teams"
  add_foreign_key "penalties", "games"
  add_foreign_key "penalties", "players"
  add_foreign_key "players", "teams"
end
