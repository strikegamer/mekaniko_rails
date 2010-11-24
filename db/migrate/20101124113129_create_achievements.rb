class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.integer :player_id
      t.string  :title
      t.string  :detail
      t.string  :image

      t.timestamps
    end
  end

  def self.down
    drop_table :achievements
  end
end
