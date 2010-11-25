class AchievementsController < ApplicationController
  
  def index
  
  end 
  
  def show
    @achievement = Achievement.find(params[:id])
  end

end
