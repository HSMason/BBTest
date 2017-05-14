Given(/^I am on BB homepage$/) do
  visit '/'
end

Given(/^I click the login CTA$/) do
  click_on 'LOG IN'
end

Then(/^I should be taken to the login page$/) do
  find('h2').text.include?('Login')
end