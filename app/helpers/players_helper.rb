module PlayersHelper
	def share_url(share)
		return link_path(share) if share.type== "Link"
		return task_path(share) if share.type== "Task"
		return xp_path(share) if share.type== "Xp"	
	end
end
