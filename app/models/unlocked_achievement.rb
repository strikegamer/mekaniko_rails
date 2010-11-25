class UnlockedAchievement < ActiveRecord::Base
  belongs_to :player
  belongs_to :achievement
end
