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
    
    achievement_name = 'White Belt'
    if (share_count == 1) and (achievement_already_unlocked(player, achievement_name) == false)
         player.achievements << Achievement.find_by_title(achievement_name)
    end
    
    achievement_name = 'Yellow Belt'
    if (link_count >= 1) and (xp_count >= 1) and (task_count >= 1) and (achievement_already_unlocked(player, achievement_name) == false)
        player.achievements << Achievement.find_by_title(achievement_name) 
    end

     achievement_name = 'Orange Belt'
     if (share_count == 5) and (achievement_already_unlocked(player, achievement_name) == false)
       player.achievements << Achievement.find_by_title(achievement_name)
     end

     achievement_name = 'Green Belt'
     if (link_count >= 5) || (xp_count >= 5) || (task_count >= 5) and (achievement_already_unlocked(player, achievement_name) == false)
       player.achievements << Achievement.find_by_title(achievement_name)
     end

     achievement_name = 'Blue Belt'
     if (share_count == 20) and (achievement_already_unlocked(player, achievement_name) == false)
       player.achievements << Achievement.find_by_title(achievement_name)
     end

     achievement_name = 'Brown Belt'
     if (share_count == 50) and (achievement_already_unlocked(player, achievement_name) == false)
       player.achievements << Achievement.find_by_title(achievement_name)
     end
     
     achievement_name = 'Good Boy'
      if (help_count == 1) and (achievement_already_unlocked(player, achievement_name) == false)
         player.achievements << Achievement.find_by_title(achievement_name)          
       end
      
     achievement_name = 'Santas Little Helper'
      if (help_count == 5) and (achievement_already_unlocked(player, achievement_name) == false)
        player.achievements << Achievement.find_by_title(achievement_name)
      end
      
      achievement_name = 'Good Samaritan'
      if (help_count == 15) and (achievement_already_unlocked(player, achievement_name) == false)
        player.achievements << Achievement.find_by_title(achievement_name)
      end
      
     achievement_name = 'Think of yourself'
      if (help_count == 25) and (achievement_already_unlocked(player, achievement_name) == false)
        player.achievements << Achievement.find_by_title(achievement_name)
      end
      
    achievement_name = 'Jezus'
      if (help_count == 50) and (achievement_already_unlocked(player, achievement_name) == false)
        player.achievements << Achievement.find_by_title(achievement_name)
      end 
      
     player.save
 
  end
  
  def achievement_already_unlocked(player, achievement_title)
    if (player.achievements.find_all_by_title(achievement_title).count == 1)
      return true
    else
      return false
    end
  end
end
