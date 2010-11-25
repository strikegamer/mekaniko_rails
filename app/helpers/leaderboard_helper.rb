module LeaderboardHelper
	def count_shares (player)
		player.tasks.count + player.links.count + player.xps.count
	end
end

