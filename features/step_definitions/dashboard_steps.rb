When /^I have players listed on Ranking$/ do |table|
   table.hashes.each do |player|
      Player.create!(player)
   end
end

Then /^I should see the users on the following order$/ do |table|
   within("#content") do |rank|
      table.hashes.each_with_index do |player, index|
         assert_equal(rank.field_by_xpath("//ul[@id='ranking']//li[@id='rank_#{index + 1}']//span[1]//a").element.content, player["name"])
         assert_equal(rank.field_by_xpath("//ul[@id='ranking']//li[@id='rank_#{index + 1}']//span[2]").element.content, player["points"] + " pts")
      end
   end
end

Then /^I should have "([^"]*)" points$/ do |pts|
   Player.last.points.should == pts.to_i
end