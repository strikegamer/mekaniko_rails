class UpdatePlayersTable < ActiveRecord::Migration
  def self.up
     remove_column :players, :name
     remove_column :players, :picture
  end

  def self.down
  end
end
