Feature: Validation error on invalid login
 
Scenario: Attempt Login with invalid email
 Given I am on Login page
 When I submit an invalid email address
 Then I should see a validation error message