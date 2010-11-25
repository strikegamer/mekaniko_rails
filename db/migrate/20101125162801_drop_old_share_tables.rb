class DropOldShareTables < ActiveRecord::Migration
  def self.up
     drop_table :links
     drop_table :xps
     drop_table :tasks
  end

  def self.down
  end
end
