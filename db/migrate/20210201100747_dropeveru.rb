class Dropeveru < ActiveRecord::Migration[6.0]
  def change
    drop_table :players
    drop_table :teams
  end
end
