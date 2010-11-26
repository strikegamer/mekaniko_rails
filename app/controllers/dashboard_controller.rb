class DashboardController < ApplicationController
  before_filter :login_required
  
	def index
    if current_user.player.blank?
      Player.create(:user_id => current_user.id, :points => 0)
      current_user.reload
    end

    @player = current_user.player
    @players = Player.find(:all, :order => "points DESC")
    @shares = Share.find(:all, :limit => 10, :order => "created_at DESC")
  end
end
