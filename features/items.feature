Feature: Items
  In order to do much of anything
  As a creature
  I want to use items
  
  Scenario: Placing an item
    Given there is a map
    And there is an item
    When the item is placed in a room
    Then the item should be in the room