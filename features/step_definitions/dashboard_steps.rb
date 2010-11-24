When /^I have players listed on Ranking$/ do |table|
  table.hashes.each do |player|
      Player.create!(player)
   end
end

Given /^the "([^"]*)" radiobutton should be checked$/ do |arg1|
  
end

Given /^I fill in textarea with "([^"]*)"$/ do |arg1|
  
end

Given /^I press "([^"]*)" button$/ do |arg1|

end
