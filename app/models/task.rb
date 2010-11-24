class Task < ActiveRecord::Base
   belongs_to :player
   has_many   :comments
   has_many   :task_helpers
end
