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

ActiveRecord::Schema.define(version: 2018_11_01_021154) do

  create_table "battles", force: :cascade do |t|
    t.integer "people_id"
    t.integer "characters_id"
    t.datetime "date_fight"
    t.boolean "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["characters_id"], name: "index_battles_on_characters_id"
    t.index ["people_id"], name: "index_battles_on_people_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "address"
    t.string "mail"
    t.integer "point"
    t.integer "won_fight"
    t.integer "lost_fight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
