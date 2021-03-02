# frozen_string_literal: true

class Addeverything < ActiveRecord::Migration[6.0]
  def change
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
end
