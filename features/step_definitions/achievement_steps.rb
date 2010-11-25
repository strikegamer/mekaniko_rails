Given /^the following achievement records$/ do |table|
   table.hashes.each do |achievement|
      Achievement.create!(achievement)
   end
end

When /^I visit the achievement "([^"]*)"$/ do |achievement_title|
   achievement = Achievement.find_by_title!(achievement_title)
   visit achievement_url(achievement)
end

Given /^the following unlocked achievements records$/ do |table|
  table.hashes.each do |unlocked_achievement|
      UnlockedAchievement.create!(unlocked_achievement)
   end
end

