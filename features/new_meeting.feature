Feature: New Meeting
  In order to use the application
  As a user of the application
  I want to be able to create a new meeting

  Scenario: User can login create a meeting while logged in
    Given I am logged in
    When I visit "/meetings/new"
    And I type "example" into "Name"
    And I click button "Book this meeting"
    Then I should see "Meeting was successfully created."



