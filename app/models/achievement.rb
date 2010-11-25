class Achievement < ActiveRecord::Base
  has_many :players, :through => :unlocked_achievements
  has_many :unlocked_achievements
end
