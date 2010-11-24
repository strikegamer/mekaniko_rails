Given /^the following xp records$/ do |table|
   table.hashes.each do |xp|
      Xp.create!(xp)
   end
end

When /^I visit the xp "([^"]*)"$/ do |xp_description|
   xp = Xp.find_by_description!(xp_description)
   visit xp_url(xp)
end
