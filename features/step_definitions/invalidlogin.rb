Given(/^I am on Login page$/) do
  visit 'https://uk.bookingbug.com/login?no_header=1'
end

When(/^I submit an invalid email address$/) do
  invalid_login = LoginPage.new
  invalid_login.login_as('not@anemail', '1234567')
end

Then(/^I should see a validation error message$/) do
  expect(page).to have_content('Failed to log in, please try again')
end
