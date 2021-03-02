# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :number
      t.string :position
      t.string :hieght
      t.string :dominant_foot
      t.integer :age
      t.string :nationality
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
