module DashboardHelper
   def share_description(share)
      return link_to(share.description, share.ref) if share.type == "Link"
      share.description
   end

   def share_url(share)
      return link_path(share) if share.type == "Link"
      return task_path(share) if share.type == "Task"
      return xp_path(share) if share.type == "Xp"
   end
end