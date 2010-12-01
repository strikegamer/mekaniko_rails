class GameRulesObserver < ActiveRecord::Observer
  observe :share, :task_helper, :comment
  
  def after_save(share)
    player = share.player
    share_count = player.shares.count
    link_count = player.links.count
    xp_count = player.xps.count
    task_count = player.tasks.count
    help_count = TaskHelper.find_all_by_player_id(player.id).count
    comment_count = Comment.find_all_by_player_id(player.id).count
    
    #White Belt
    if (share_count == 1)
      player.achievements << Achievement.find_by_title("White Belt")
    end
    
     #Pink Belt
      if (share_count == 1) and (player.user.name == 'Arthur Macedo')
        player.achievements << Achievement.find_by_title("Pink Belt")
      end
    
    #Yellow Belt
    if (link_count == 1) and (xp_count == 1) and (task_count == 1)
       player.achievements << Achievement.find_by_title("Yellow Belt")       
    end

     #Orange Belt
     if (share_count == 5)
       player.achievements << Achievement.find_by_title("Orange Belt")
     end

     #Green Belt
     if (link_count == 5) || (xp_count == 5) || (task_count == 5)
       player.achievements << Achievement.find_by_title("Green Belt")
     end

     #Blue Belt
     if (share_count == 20)
       player.achievements << Achievement.find_by_title("Blue Belt")
     end

     #Brown Belt
     if (share_count == 50)
       player.achievements << Achievement.find_by_title("Brown Belt")
     end
     
     #Good Boy
      if (help_count == 1)
        player.achievements << Achievement.find_by_title("Good Boy")
      end
      
     #GSantas Little Helper
      if (help_count == 5)
        player.achievements << Achievement.find_by_title("Santas Little Helper")
      end
      
      #Good Samaritan
      if (help_count == 15)
        player.achievements << Achievement.find_by_title("Good Samaritan")
      end
      
     #Think of yourself
      if (help_count == 25)
        player.achievements << Achievement.find_by_title("Think of yourself")
      end
      
    #Jezus
      if (help_count == 50)
        player.achievements << Achievement.find_by_title("Jezus")
      end
      
      
     
     player.save
 
  end
end
