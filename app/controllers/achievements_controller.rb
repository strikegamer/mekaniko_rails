class AchievementsController < ApplicationController
  before_filter :login_required
  
  def index
  
  end 
  
  def show
    @achievement = Achievement.find(params[:id])
    @achievements = Achievement.find(:all)
  end

end
