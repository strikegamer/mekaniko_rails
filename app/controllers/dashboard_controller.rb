class DashboardController < ApplicationController
  def index
    
  end
  
  def show
  	@players = Player.find(:all, :order => "points DESC")
  end
end
