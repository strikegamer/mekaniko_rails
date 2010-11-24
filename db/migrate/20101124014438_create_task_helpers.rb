class CreateTaskHelpers < ActiveRecord::Migration
  def self.up
    create_table :task_helpers do |t|
      t.integer :player_id
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :task_helpers
  end
end
