Given /^the following task records$/ do |table|
   table.hashes.each do |task|
      Task.create!(task)
   end
end

When /^I visit the task "([^"]*)"$/ do |task_description|
   task = Task.find_by_description!(task_description)
   visit task_url(task)
end
