class DashboardController < ApplicationController
  def index
    @players = Player.find(:all, :order => "points DESC")
  end
end