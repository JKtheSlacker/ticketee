Feature: Editing Tickets
  In order to alter ticket information
  As a user
  I want a form to edit the tickets

  Background:
    Given theere is a project called "TextMate 2"
    And that project has a ticket:
      | title           | description                   |
      | Make it shiny!  | Gradients! Starbursts! Oh My! |
    Given I am on the homepage
    When I follow "TextMate 2"
    And I follow "Make it shiny!"
    When I follow "Edit"

  Scenario: Updating a ticket
    When I fill in "Title" with "Make it really shiny!"
    And I press "Update"
    Then I should see "Ticket has been updated."
    And I should be on the "Make it really shiny!" ticket in the "TextMate 2" project
    And I should see "Make it really shiny!"
    But I should not see "Make it shiny!"

  Scenario: Updating a ticket with invalid information
    When I fill in "Title" with ""
    And I press "Update"
    Then I should see "Ticket has not been updated."

