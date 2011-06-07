Feature: Editing Projects
  In order to update project information
  As a user
  I want to be able to do that through an interface

Scenario: Updating a project
    Given there is a project called "TextMate 2"
    And I am on the homepage
    When I follow "TextMate 2"
    And I follow "Edit"
    And I fill in "Name" with "TextMate 2 beta"
    And I press "Update Project"
    Then I should see "Project has been updated."
    And I should be on the project page for "TextMate 2 beta"
