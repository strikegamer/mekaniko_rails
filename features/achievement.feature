Feature: Achievement
  In order to show achievement details
  As a player
  I want see achievement details

  Scenario: Show achievement page
    Given I am logged in
    And the following achievement records
    | title        | description          | tasks | links | xps | shares | helps | image                       |
    | White Belt   | First Share          |  1    |  1    |  1  |   1    |   1   | achievements/White_belt-first_share.jpg  |
    | Yellow Belt  | First Combo Share    |  1    |  1    |  1  |   1    |   1   | achievements/Yellow_belt-first_combo_share.jpg |
    | Orange Belt  | 5 Shares             |  5    |  5    |  5  |   5    |   5   | achievements/Orange_belt-five_shares.jpg  |
    And the following unlocked achievements records
    | player_id | achievement_id |
    | 1         | 1              |  
    | 1         | 2              |  
    | 1         | 3              |  
    When I visit the achievement "White Belt"
    Then I should see "White Belt"
    And I should see "First Share"
    And I should see "luisbebop"

    When I visit the achievement "Yellow Belt"
    Then I should see "Yellow Belt"
    And I should see "First Combo Share"
    And I should see "luisbebop"

    When I visit the achievement "Orange Belt"
    Then I should see "Orange Belt"
    And I should see "5 Shares"
    And I should see "luisbebop"
