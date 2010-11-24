Given /^the following achievement records$/ do |table|
   table.hashes.each do |achievement|
      Achievement.create!(achievement)
   end
end

When /^I visit the achievement "([^"]*)"$/ do |achievement_title|
   achievement = Achievement.find_by_title!(achievement_title)
   visit achievement_url(achievement)
end