class Player < ActiveRecord::Base
   has_many :links
   has_many :achievements
   has_many :xps
   has_many :tasks
   has_many :task_helpers
   has_many :comments
end
