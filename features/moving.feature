Feature: Moving
  In order to play the game
  As a creature
  I want to move around
  
  Scenario: Move north
    Given there is a map
    And I am in a room
    And there is a room to the north
    When I move north
    Then I should be in that room
    
  Scenario: Move south
    Given there is a map
    And I am in a room
    And there is a room to the south
    When I move south
    Then I should be in that room
    
  Scenario: Move east
    Given there is a map
    And I am in a room
    And there is a room to the east
    When I move east
    Then I should be in that room
    
  Scenario: Move west
    Given there is a map
    And I am in a room
    And there is a room to the west
    When I move west
    Then I should be in that room