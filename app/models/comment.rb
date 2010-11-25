class Comment < ActiveRecord::Base
   belongs_to :player
   belongs_to :share
end
