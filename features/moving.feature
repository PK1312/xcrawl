Feature: Moving
  In order to play the game
  As a player
  I want to move around
  
  Scenario: Move north
    Given there is a map
    And I am in a room
    And there is a room to the north
    When I move north
    Then I should be in that room