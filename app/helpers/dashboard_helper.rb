module DashboardHelper
   def share_description(share)
      link_to(share.description, share_path(share))
   end

   def share_url(share)
      return link_path(share) if share.type == "Link"
      return task_path(share) if share.type == "Task"
      return xp_path(share) if share.type == "Xp"
   end
end