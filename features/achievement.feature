Feature: Achievement
  In order to show achievement details
  As a player
  I want see achievement details

  Scenario: Show achievement page
    Given the following player records
      | name             | picture                                          | points|
      | Jean Orlando     | http://planobe.com.br/images/photo-jean.png      | 10    |
      | Gabriela Gomide  | http://planobe.com.br/images/photo-gabi.png      | 5     |
      | Eliezer Pimentel | http://planobe.com.br/images/photo-eliezer.png   | 2     |
    And the following achievement records
    | title        | description          | tasks | links | xps | shares | helps | image                       |
    | White Belt   | First Share          |  1    |  1    |  1  |   1    |   1   | achievements/White_belt-first_share.jpg  |
    | Yellow Belt  | First Combo Share    |  1    |  1    |  1  |   1    |   1   | achievements/Yellow_belt-first_combo_share.jpg |
    | Orange Belt  | 5 Shares             |  5    |  5    |  5  |   5    |   5   | achievements/Orange_belt-five_shares.jpg  |
    And the following unlocked achievements records
    | player_id | achievement_id |
    | 1         | 1              |  
    | 2         | 1              |
    | 3         | 1              |
    | 1         | 2              |  
    | 2         | 2              |
    | 3         | 3             |
    When I visit the achievement "White Belt"
    Then I should see "White Belt"
    And I should see "First Share"
    And I should see "Jean"
    And I should see "Gabriela"
    And I should see "Eliezer"

    When I visit the achievement "Yellow Belt"
    Then I should see "Yellow Belt"
    And I should see "First Combo Share"
    And I should see "Jean"
    And I should see "Gabriela"
    And I should not see "Eliezer"

    When I visit the achievement "Orange Belt"
    Then I should see "Orange Belt"
    And I should see "5 Shares"
    And I should not see "Jean"
    And I should not see "Gabriela"
    And I should see "Eliezer"
