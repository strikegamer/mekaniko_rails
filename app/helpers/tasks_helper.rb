module TasksHelper
   def start_to_help_link(task, player_id)
      task_helper = task.task_helpers.find_by_player_id(player_id)

      if task_helper
         link_to("Start to help", "javascript:alert('You are already helping out on this task!');", :class => "link")
      else
         link_to("Start to help", "javascript:document.getElementById('new_task_helper').submit();", :class => "link")
      end
   end
end
