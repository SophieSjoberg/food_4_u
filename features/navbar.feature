Feature: Navbar
  As a user
  In order to navigate the site
  I would like to see a navbar with a home button and a cart button displayed

  Scenario: Display navbar to visitor
    Given I visit the landing page
    Then "navigationBar" should be present
    And I would like to see a "Home" link
    And I would like to see a "Cart" link
