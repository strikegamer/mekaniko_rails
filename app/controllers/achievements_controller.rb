class AchievementsController < ApplicationController
  
  def index
  
  end 
  
  def show
    @achievement = Achievement.find(params[:id])
    @achievements = Achievement.find(:all)
  end

end
