Feature: User can pay for order
  As a visitor
  In order to complete my purchase
  I need to fill in a stripe payment form

  @javascript
  Scenario: User can fill in stripe form
    When I click "Pay with Card" button
    Then I fill in stripe form field "Email" with "random@random.com"
    And I fill in stripe form field "Card number" with "4242 4242 4242 4242"
    And I fill in stripe form field "CVC" with "123"
    And I fill in stripe form field "Expiry" with "12/2021"
    And I submit the stripe form
