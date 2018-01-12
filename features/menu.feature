Feature: Menus displayed for visitors
  As a visitor
  In order to help me decide what food to order
  I would like to see Menus displayed

  Background:
    Given the following menus exist
      | name    |
      | Lunch   |
      | Dinner  |
    And I visit the landing page

  Scenario: Visitor visits landing page
    Then I should see 'Lunch'
    And I should see 'Dinner'
