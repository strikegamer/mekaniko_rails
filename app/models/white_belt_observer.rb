class WhiteBeltObserver < ActiveRecord::Observer
  observe :share
  
  def after_save(share)
    player = share.player
    if (player.shares.count == 1)
      player.achievements << Achievement.find_by_title("White belt")
      player.save
    end
  end
end