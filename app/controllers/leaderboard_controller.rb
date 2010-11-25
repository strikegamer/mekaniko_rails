class LeaderboardController < ApplicationController  
  before_filter :login_required
  
  def index
    @players = Player.find(:all, :order => "points DESC")
  end
end

