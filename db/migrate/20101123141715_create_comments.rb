class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :player_id
      t.string :action_type
      t.integer :link_id
      t.integer :xp_id
      t.integer :task_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
