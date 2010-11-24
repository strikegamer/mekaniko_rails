class TaskHelpersController < ApplicationController
   def create
      @task = Task.find(params[:task_id])
      @task_helper = @task.task_helpers.new(:player_id => 1)

      respond_to do |format|
         if @task_helper.save
            format.html { redirect_to(@task) }
            format.js
         else
            format.html { render :template => "tasks/show", :layout => "application" }
         end
      end
   end
end