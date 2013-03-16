Given(/^I start a new app:$/) do
  visit  '/' 
end

When(/^I Get a number for "(.*?)"$/) do |num|
  fill_in('guesstext', :with=>num )
  click_button('Guess')
end