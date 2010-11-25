class CreateShares < ActiveRecord::Migration
  def self.up
    create_table :shares do |t|
      t.string :type
      t.integer :player_id
      t.string :ref
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :shares
  end
end
