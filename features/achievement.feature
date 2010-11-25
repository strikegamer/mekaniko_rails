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
    | White Belt   | First Share          |  1    |  1    |  1  |   1    |   1   | White_belt-first_share.jpg  |
    | Yellow Belt  | First Combo Share    |  1    |  1    |  1  |   1    |   1   | Yellow_belt-first_share.jpg |
    | Orange Belt  | 5 Shares             |  5    |  5    |  5  |   5    |   5   | Orange_belt-first_share.jpg  |
    And the following unlocked achievements records
    | player_id | achievement_id |
    | 1         | 1              |  
    | 2         | 1              |
    | 3         | 1              |
    When I visit the achievement "White Belt"
    Then I should see "White Belt"
    And I should see "First Share"
    And I should see "Jean"
    And I should see "Gabriela"
    And I should see "Eliezer"
    #And show me the page
