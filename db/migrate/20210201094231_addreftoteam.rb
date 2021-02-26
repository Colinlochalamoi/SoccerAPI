class Addreftoteam < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :teams , foreign_key: true
    
 
  end
end
