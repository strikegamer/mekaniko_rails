class AdjustAchievements < ActiveRecord::Migration
  def self.up
    rename_column :achievements, :detail, :description
    remove_column :achievements, :player_id
    add_column :achievements, :tasks, :integer
    add_column :achievements, :links, :integer
    add_column :achievements, :xps, :integer
    add_column :achievements, :shares, :integer
    add_column :achievements, :helps, :integer
  end

  def self.down
    rename_column :achievements, :description, :detail
    add_column :achievements, :player_id
    remove_column :achievements, :tasks, :integer
    remove_column :achievements, :links, :integer
    remove_column :achievements, :xps, :integer
    remove_column :achievements, :shares, :integer
    remove_column :achievements, :helps, :integer
  end
end
