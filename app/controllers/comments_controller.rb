class CommentsController < ApplicationController
   before_filter :login_required
   
   def create
      @share = case params[:type]
         when "Link" then Link.find(params[:link_id])
         when "Task" then Task.find(params[:task_id])
         else Xp.find(params[:xp_id])
      end

      @comment = @share.comments.create!(params[:comment].merge(:player_id => current_user.player.id))

      redirect_to @share
   end
end
