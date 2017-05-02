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

ActiveRecord::Schema.define(version: 20170418092339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "halls", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_sessions", id: :serial, force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hall_id"
    t.integer "movie_id"
    t.index ["hall_id"], name: "index_movie_sessions_on_hall_id"
    t.index ["movie_id"], name: "index_movie_sessions_on_movie_id"
  end

  create_table "movies", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.integer "duration", null: false
    t.string "genre", null: false
    t.string "description", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", id: :serial, force: :cascade do |t|
    t.decimal "price", precision: 5, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "movie_session_id"
    t.index ["movie_session_id"], name: "index_tickets_on_movie_session_id"
  end

end
