Given /^the following player records$/ do |table|
   table.hashes.each do |player|
      Player.create!(player)
   end
end

When /^I visit the "([^"]*)" profile page$/ do |player_name|
  user = User.find_by_name!(player_name)
  player = user.player
   visit player_url(player)
end

Then /^I should see points "([^"]*)"$/ do |player_points|
  player = Player.find_by_points!(player_points)
end

