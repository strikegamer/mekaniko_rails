class CreateUnlockedAchievements < ActiveRecord::Migration
  def self.up
    create_table :unlocked_achievements do |t|
      t.integer :player_id
      t.integer :achievement_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :unlocked_achievements
  end
end
