class AchievementsController < ApplicationController
  
  def index
  
  end 
  
  def show
    @achievement = Achievement.find(params[:id])
    @player = Player.find_by_id(@achievement.player_id)
  end

end
