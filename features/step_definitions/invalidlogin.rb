Given(/^I am on Login page$/) do
  visit 'https://uk.bookingbug.com/login?no_header=1'
end

When(/^I submit an invalid email address$/) do
  LoginPage.new.login_as()
end

Then(/^I should see a validation error message$/) do
  find('div').text.include?('Invalid email or password')
end