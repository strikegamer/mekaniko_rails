class DashboardController < ApplicationController
	def index
		@players = Player.find(:all, :order => "points DESC")
		@tasks = Task.find(:all)
		@xps = Xp.find(:all)
		@links = Link.find(:all)
	end
end
