class Player < ActiveRecord::Base
   belongs_to :user
   has_many :links
   has_many :achievements, :through => :unlocked_achievements
   has_many :xps
   has_many :tasks
   has_many :task_helpers
   has_many :comments
   has_many :unlocked_achievements
end
