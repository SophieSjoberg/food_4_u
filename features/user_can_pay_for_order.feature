Feature: User can pay for order
  As a visitor
  In order to complete my purchase
  I need to fill in a stripe payment form

  @javascript
  Scenario: User can fill in stripe form
    Given I visit the cart page
    When I click "Pay with Card" button
    Then I fill in stripe form field "Email" with "random@random.com"
    And I fill in stripe form field "Card number" with "4242 4242 4242 4242"
    And I fill in stripe form field "Expiry" with "12/2021"
    And I fill in stripe form field "CVC" with "123"
    And I submit the stripe form
    Then I should see "Your transaction was successful!"

  @javascript
  Scenario: User fill in incorrect card number
    Given I visit the cart page
    When I click "Pay with Card" button
    Then I fill in stripe form field "Email" with "random@random.com"
    And I fill in stripe form field "Card number" with "4242 4242 4242 4241"
    And I fill in stripe form field "Expiry" with "12/2021"
    And I fill in stripe form field "CVC" with "123"
    And I submit the stripe form
    Then I should not see "Your transaction was successful!"

  @javascript
  Scenario: Users card is expired 
    Given I visit the cart page
    When I click "Pay with Card" button
    And I fill in stripe form field "Email" with "cutie123@hotmail.com"
    And I fill in stripe form field "Card number" with "4000000000000069"
    And I fill in stripe form field "Expiry" with "12/2021"
    And I fill in stripe form field "CVC" with "123"
    And I submit the stripe form
    Then I should not see "Your transaction was successful!"

  @javascript
  Scenario: User fill in incorrect CVC number
    Given I visit the cart page
    When I click "Pay with Card" button
    Then I fill in stripe form field "Email" with "random@random.com"
    And I fill in stripe form field "Card number" with "4000 0000 0000 0127"
    And I fill in stripe form field "Expiry" with "12/2021"
    And I fill in stripe form field "CVC" with "123"
    And I submit the stripe form
    Then I should not see "Your transaction was successful!"
