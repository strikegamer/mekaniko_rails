class Link < ActiveRecord::Base
   belongs_to :player
   has_many   :comments
end
