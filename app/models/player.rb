class Player < ActiveRecord::Base
   has_many :links
   has_many :achievements
end
