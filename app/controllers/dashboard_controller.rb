class DashboardController < ApplicationController
  before_filter :login_required
  
	def index
	  Player.create(:user_id => current_user.id) if current_user.player.nil?
		@players = Player.find(:all, :order => "points DESC")
		@tasks = Task.find(:all)
		@xps = Xp.find(:all)
		@links = Link.find(:all)
	end
end
