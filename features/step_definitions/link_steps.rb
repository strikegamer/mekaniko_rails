Given /^the following link records$/ do |table|
   table.hashes.each do |link|
      Link.create!(link)
   end
end

When /^I visit the link "([^"]*)"$/ do |link_description|
   link = Link.find_by_description!(link_description)
   visit link_url(link)
end
