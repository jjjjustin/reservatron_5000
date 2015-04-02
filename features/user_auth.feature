Feature: User Auth
  In order to use the application
  As a user of the application
  I want to be able to login to my existing account

  Scenario: User must login
    Given I am not logged in
    When I visit "/rooms"
    Then I should see "Sign in"

  Scenario: User must have a valid accounts
    Given I am not logged in
    When I visit "/users/sign_in"
    And I type "user@example.com" into "Email"
    And I type "password" into "Password"
    And I click button "Log in"
    Then I should see "Invalid email or password"

  Scenario: User can login with a valid account
    Given I am not logged in
    And I have a valid account
    When I visit "/users/sign_in"
    And I type "user@example.com" into "Email"
    And I type "password" into "Password"
    And I click button "Log in"
    Then I should see "Signed in successfully."

  Scenario: User can create an account
    Given I am not logged in
    When I visit "/users/sign_up"
    And I type "user" into "First name"
    And I type "user" into "Last name"
    And I type "user@example.com" into "Email"
    And I type "password" into "Password"
    And I type "password" into "Confirmation"
    And I click button "Sign up"
    Then I should see "Welcome! You have signed up successfully."

