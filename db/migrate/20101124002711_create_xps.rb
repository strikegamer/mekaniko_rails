class CreateXps < ActiveRecord::Migration
  def self.up
    create_table :xps do |t|
      t.integer :player_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :xps
  end
end
