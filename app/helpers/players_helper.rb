module PlayersHelper
   def share_url(share)
      return link_path(share) if share.type == "Link"
      return task_path(share) if share.type == "Task"
      return xp_path(share) if share.type == "Xp"
   end

   def share_description(share)
      return link_to(h(share.description), share.ref) if share.type == "Link"
      h(share.description)
   end
end
