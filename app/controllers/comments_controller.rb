class CommentsController < ApplicationController
   def create
      @action = case params[:action_type]
         when "link" then Link.find(params[:link_id])
         when "task" then Task.find(params[:task_id])
         else Xp.find(params[:xp_id])
      end

      @comment = @action.comments.create!(params[:comment].merge(:player_id => 1))

      redirect_to @action
   end
end
