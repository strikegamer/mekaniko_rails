Given /^the following player records$/ do |table|
   table.hashes.each do |player|
      Player.create!(player)
   end
end
