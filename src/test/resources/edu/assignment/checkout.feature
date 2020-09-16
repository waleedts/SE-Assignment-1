Feature: Checkout
  Scenario Outline: Checkout an item with different amounts
    Given the price of a <item> <price>
    When I checkout <amount> <item>
    Then the total price should be <total>
    Examples:
      | item     | price  | amount| total |
      | "banana" |   40   |   1   |   40  |
      |  "apple" |   25   |   1   |   25  |
      |  "fig"   |   15   |   1   |   15  |
      |  "fig"   |   15   |   3   |   45  |
      | "banana" |   40   |   3   |   120 |
      |  "apple" |   25   |   3   |   75  |
  Scenario Outline: Checkout two items
    Given the price of a <first_item> <first_price>
    And the price of a <second_item> <second_price>
    When I checkout <first_amount> <first_item>
    And I checkout <second_amount> <second_item>
    Then the total price should be <total>
    Examples:
      | first_item | first_price | first_amount|second_item|second_price |second_amount| total |
      | "banana"   |      40     |       1     | "apple"   |      25     |       1     |   65  |
      |  "apple"   |      25     |       1     | "fig"     |      15     |       1     |   40  |
      |  "banana"  |      40     |       1     |  "banana" |      40     |       1     |   80  |
      | "banana"   |      40     |       3     | "apple"   |      25     |       4     |   220 |
      |  "apple"   |      25     |       6     | "fig"     |      15     |       2     |   180 |
      |  "banana"  |      40     |       3     |  "banana" |      40     |       4     |   280 |
