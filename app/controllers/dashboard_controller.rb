class DashboardController < ApplicationController
  before_filter :login_required
  
	def index
    if current_user.player.blank?
      Player.create(:user_id => current_user.id, :points => 0)
      current_user.reload
    end
    @players = Player.find(:all, :order => "points DESC")
    @tasks = Task.find(:all)
    @xps = Xp.find(:all)
    @links = Link.find(:all)
  end
end
