Given /^the following users records$/ do |table|
  table.hashes.each do |player|
    user = User.create(
    :login             => player["name"],
    :name              => player["name"],
    :profile_image_url => player["profile_image_url"],
    :player            => Player.new(:points => player["points"].to_i))
    user.twitter_id = player["name"]
    assert user.save
  end
end

Then /^show the users sorted$/ do |table|
  within("#TableLeaderboard") do |html_table|
    table.hashes.each_with_index do |player, index|
      assert_equal(html_table.field_by_xpath("//tr[#{index+2}]//td[1]//p").element.content, "#{index+1}.")
      assert_equal(html_table.field_by_xpath("//tr[#{index+2}]//td[2]//a//@src").element.content, player["profile_image_url"])
      assert html_table.field_by_xpath("//tr[#{index+2}]//td[3]").element.content.include?(player["name"])
      assert_equal(html_table.field_by_xpath("//tr[#{index+2}]//td[4]//p").element.content, player["shares"])
      assert_equal(html_table.field_by_xpath("//tr[#{index+2}]//td[5]//p").element.content, player["points"])
    end
  end
end

