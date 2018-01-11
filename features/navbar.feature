Feature: Navbar
  As a user
  In order to navigate the site
  I would like to see a navbar with a home button and a cart button displayed

  Scenario: Display navbar to visitor
    Given I am on the landing page
    Then I should see a navbar
    And I would like to see a "Home" button
    And I would like to see a "Cart" button
