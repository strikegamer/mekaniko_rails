Given /^I am logged in$/ do  
  visit dashboard_index_path
  visit login_path
  visit oauth_callback_path
end

When /^Twitter authorizes me$/ do
  visit oauth_callback_path
end

Then /^I should have one user in my database$/ do
  User.count.should == 1
end

Then /^I should have the following player on my database$/ do |table|
   player = table.hashes.first
   p = Player.first
   p.id.should == player["player-id"].to_i
   p.user.id.should == player["player-user-id"].to_i
   p.user.login.should == player["player-user-login"]
   p.user.name.should == player["player-user-name"]
   p.user.twitter_id.should == player["player-user-twitter_id"]
end




