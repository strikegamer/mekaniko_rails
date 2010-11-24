Given /^the following users records$/ do |table|
  table.hashes.each do |player|
    Player.create!(player)
  end
end

Then /^show the users sorted$/ do |table|
  table.hashes.each_with_index do |player, index|
    page.div(:id,"players").tables.first.rows[index].each do |row|
      row[0].should == player["name"]
      row[1].should == player["picture"]
      row[2].should == player["points"]
    end
  end
end

#http://objectliteral.blogspot.com/2009/07/webrats-fillin-method-on-cucumber.html
#When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, v

