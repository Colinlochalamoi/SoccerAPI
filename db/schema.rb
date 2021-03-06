# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_210_201_100_858) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'players', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.integer 'number'
    t.string 'position'
    t.string 'hieght'
    t.string 'dominant_foot'
    t.integer 'age'
    t.string 'nationality'
    t.bigint 'team_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['team_id'], name: 'index_comments_on_video_id'
  end

  create_table 'teams', force: :cascade do |t|
    t.string 'name'
    t.string 'city'
    t.string 'nationality'
    t.string 'color_1'
    t.string 'color_2'
    t.string 'league'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
