class GameRulesObserver < ActiveRecord::Observer
  observe :share
  
  def after_save(share)
    player = share.player
    share_count = player.shares.count
    link_count = player.shares.find_all_by_type('Link').count
    xp_count = player.shares.find_all_by_type('Xp').count
    task_count = player.shares.find_all_by_type('Task').count
    
    #White Belt
    if (share_count == 1)
      player.achievements << Achievement.find_by_title("White Belt")
      player.save
    end
    
    #Yellow Belt
     if (link_count == 1) && (xp_count == 1) && (task_count == 1)
       player.achievements << Achievement.find_by_title("Yellow Belt")
       player.save      
     end

     #Orange Belt
     if (share_count == 5)
       player.achievements << Achievement.find_by_title("Orange Belt")
       player.save
     end

     #Green Belt
     if (link_count == 5) && (xp_count == 5) && (task_count == 5)
       player.achievements << Achievement.find_by_title("Green Belt")
       player.save      
     end

     #Blue Belt
     if (share_count == 20)
       player.achievements << Achievement.find_by_title("Blue Belt")
       player.save
     end

     #Brown Belt
     if (share_count == 50)
       player.achievements << Achievement.find_by_title("Brown Belt")
       player.save
     end
    
    
 
  end
end