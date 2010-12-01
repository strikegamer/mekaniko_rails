class UnlockedAchievement < ActiveRecord::Base
  belongs_to :player
  belongs_to :achievement
  validates_uniqueness_of :player_id, :scope => :achievement_id
end
