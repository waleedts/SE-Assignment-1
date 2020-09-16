Feature: Checkout
  Scenario: Checkout a banana
    Given the price of a "banana" 40
    When I checkout 1 "banana"
    Then the total price should be 40
  Scenario: Two bananas checked out separately
    Given the price of a "banana" 40
    When I checkout 1 "banana"
    And I checkout 1 "banana"
    Then the total price should be 80
  Scenario: A banana and an apple
    Given the price of a "banana" 40
    And the price of a "apple" 25
    When I checkout 1 "banana"
    And I checkout 1 "apple"
    Then the total price should be 65
  Scenario: A banana and an 2 apples
    Given the price of a "banana" 40
    And the price of a "apple" 25
    When I checkout 1 "banana"
    And I checkout 2 "apple"
    Then the total price should be 90
  Scenario: Four bananas each two checked out separately
    Given the price of a "banana" 40
    When I checkout 2 "banana"
    And I checkout 2 "banana"
    Then the total price should be 160