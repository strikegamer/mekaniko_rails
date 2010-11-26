class Player < ActiveRecord::Base
   belongs_to :user
   has_many :shares
   has_many :links
   has_many :achievements, :through => :unlocked_achievements
   has_many :xps
   has_many :tasks
   has_many :task_helpers
   has_many :comments
   has_many :unlocked_achievements

   def level
      #formula to do dynamic levels
      #(points(new level)) = (points(new level - 1)) + (10 * new level - 1)

      #fixed levels
      inf = 1.0 / 0.0 #I've smoked paypipe! ;)
      case self.points
         when 0..9     then return [1,9]
         when 10..29   then return [2,29]
         when 30..59   then return [3,59]
         when 60..99   then return [4,99]
         when 100..149 then return [5,149]
         when 150..209 then return [6,209]
         when 210..279 then return [7,279]
         when 280..inf then return [8,999]
      end
   end
end
