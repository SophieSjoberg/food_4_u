Feature: Navbar
  As a user
  In order to navigate the site
  I would like to see a navbar with a home button and a cart button displayed

  Scenario: Display navbar to visitor
    Given I visit the landing page
    Then the "Navbar" should be present
    And I would like to see a "Home" button
    And I would like to see a "Cart" button
