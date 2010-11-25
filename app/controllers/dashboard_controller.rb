class DashboardController < ApplicationController
  
  def show
  	@players = Player.find(:all, :order => "points DESC")
  end
  
	def index
		@players = Player.find(:all, :order => "points DESC")
		@tasks = Task.find(:all)
		@xps = Xp.find(:all)
		@links = Link.find(:all)
	end
end
