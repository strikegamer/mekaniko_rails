class CreateAchievements < ActiveRecord::Migration
  def self.up
    create_table :achievements do |t|
      t.string  :title
      t.string  :description
      t.string  :image
      t.timestamps
    end
  end

  def self.down
    drop_table :achievements
  end
end
