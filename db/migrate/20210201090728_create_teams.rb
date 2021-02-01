# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :nationality
      t.string :color_1
      t.string :color_2
      t.string :league

      t.timestamps
    end
  end
end
