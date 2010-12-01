Then /^I should unlock the "([^"]*)" achievement$/ do |achievement|
  user = User.first
  user.player.achievements.find_all_by_title(achievement).count.should == 1
end

When /^I posted "([^"]*)" "([^"]*)"$/ do |quantity, type|
  user = User.first
  quantity.to_i.times do    
     share = case type
        when "Xp" then Xp.new(:player_id => user.player.id)
        when "Task" then Task.new(:player_id => user.player.id)
        when "Link" then Link.new(:player_id => user.player.id)
     end
     share.save
     share.player.increase_points(1);
  end
end

Then /^I should have "([^"]*)" shares$/ do |quantity|
  user = User.first
  user.player.shares.count.should == quantity.to_i
end

When /^I help "([^"]*)" times in an anyone Task$/ do |quantity|
  user = User.first
  quantity.to_i.times do    
    task = Task.new(:player_id => user.player.id)
    task.save
    task_helper = task.task_helpers.new(:player_id => user.player.id)
    task_helper.save
  end
end


Then /^I should have "([^"]*)" helps$/ do |quantity|
  user = User.first
  TaskHelper.find_all_by_player_id(user.player.id).count == quantity.to_i
end


