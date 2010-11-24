class Comment < ActiveRecord::Base
   belongs_to :link
   belongs_to :xp
   belongs_to :task
   belongs_to :player
end
