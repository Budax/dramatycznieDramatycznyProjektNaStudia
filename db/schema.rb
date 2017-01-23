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

ActiveRecord::Schema.define(version: 20170123135022) do

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "country"
    t.date     "dateOfBirth"
    t.date     "dateOfDeath"
    t.string   "img"
    t.text     "films"
    t.text     "role"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "user"
    t.integer  "movie"
    t.integer  "actor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.text     "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_categories", force: :cascade do |t|
    t.string   "cat_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.integer  "country"
    t.integer  "film_genre"
    t.integer  "director"
    t.text     "actors"
    t.text     "desc"
    t.text     "comments"
    t.text     "reports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movis", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.integer  "country"
    t.integer  "film_genre"
    t.integer  "director"
    t.text     "actors"
    t.text     "comments"
    t.text     "reports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.text     "desc"
    t.integer  "user"
    t.integer  "actor"
    t.integer  "movie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "login"
    t.string   "password"
    t.integer  "role"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
