class TaskHelper < ActiveRecord::Base
   belongs_to :task
   belongs_to :player
end
