class Link < Share
   belongs_to :player
   has_many   :comments
end
