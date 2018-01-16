Feature: User can add product to order
As a visitor
In order to buy dishes
I would like to be able to add them to an order

Background:
  Given the following dishes exist 
    | name      | price |
    | Phad Thai | 60    |
    | Fried rice| 70    |

  Scenario: User click "Order" on a product and creates an order
    Given I visit the "ThaiTanic" page
    And I click "Order" on "Phad Thai"
    Then there should be an order created for me
    And the order should contain "Phad Thai"
    And I should see "Phad Thai was added to your order"
