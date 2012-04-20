# features/step_definitions/m4.rb

Then /^debug$/ do
  debugger
  p 0
end

Then /^nothing$/ do
  assert true
end

Then /^I visit "([^"]*)"$/ do |path|
  # work around emacs-bug here via this dbl-quote: "
  visit path
end

Then /^I visit "([^"]*)" I should see "([^"]*)"$/ do |path, astring|
  # work around emacs-bug here via this dbl-quote: "
  visit path
  step %{I should see astring}
end


Then /^I should see "([^"]*)"$/ do |text|
  # work around emacs-bug here via this dbl-quote: "
  page.should have_content(text)
end
