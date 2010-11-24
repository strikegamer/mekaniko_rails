class RenameColumnNameOnLinksTable < ActiveRecord::Migration
   def self.up
      rename_column :links, :user_id, :player_id
   end

   def self.down
      rename_column :links, :player_id, :user_id
   end
end
