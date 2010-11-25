When /^I have players listed on Ranking$/ do |table|
	table.hashes.each do |player|
		Player.create!(player)
	end
end
