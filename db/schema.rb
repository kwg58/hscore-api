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

ActiveRecord::Schema.define(version: 20160806192125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.string   "location"
    t.string   "status"
    t.integer  "periodlength"
    t.string   "official1"
    t.string   "official2"
    t.string   "official3"
    t.integer  "hometeam"
    t.integer  "awayteam"
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
    t.integer  "winner"
    t.integer  "loser"
    t.integer  "tie"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "goalies", force: :cascade do |t|
    t.integer  "time_played"
    t.integer  "goals_against"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "team"
    t.integer  "player"
    t.integer  "assist1"
    t.integer  "assist2"
    t.integer  "period"
    t.time     "time"
    t.string   "situation"
    t.integer  "goalie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infractions", force: :cascade do |t|
    t.string   "infraction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "penalties", force: :cascade do |t|
    t.integer  "period"
    t.time     "time"
    t.integer  "player"
    t.integer  "sitter"
    t.integer  "infraction"
    t.integer  "duration"
    t.string   "shorthanded"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
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

end
