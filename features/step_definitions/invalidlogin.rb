Given(/^I am on Login page$/) do
  visit 'https://uk.bookingbug.com/login?no_header=1'
end

When(/^I submit an invalid email address$/) do
  LoginPage.new
end

Then(/^I should see a validation error message$/) do
  find(:xpath, '//*[@id="container"]/div[1]').text.include?('Invalid email or password')
end