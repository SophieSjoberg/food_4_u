Feature: Navbar
  As a visitor
  In order to go back to the home page
  I would like to see a clickable icon in the navbar that redirects me to the landing page

  Background:
    Given I visit the 'Landing' page

  Scenario: Visitor visits landing page
    Then I should see 'Welcome to our site!'
