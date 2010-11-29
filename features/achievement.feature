Feature: Achievement
  In order to show achievement details
  As a player
  I want see achievement details

  Scenario: Show achievement page
    And the following users records
      | name     | profile_image_url                               | points|
      | Arthur   | http://planobe.com.br/images/photo-arthur.png   | 38    |
      | Bruno    | http://planobe.com.br/images/photo-bruno.png    | 32    |
      | Danilo   | http://planobe.com.br/images/photo-danilo.png   | 40    |
      | Dennis   | http://planobe.com.br/images/photo-dennis.png   | 43    |
      | Eliezer  | http://planobe.com.br/images/photo-eliezer.png  | 25    |
      | Gabriela | http://planobe.com.br/images/photo-gabriela.png | 36    |
      | Jean     | http://planobe.com.br/images/photo-jean.png     | 30    |
      | Luis     | http://planobe.com.br/images/photo-luis.png     | 28    |
    And the following achievement records
    | title        | description          | image                       |
    | White Belt   | First Share          | achievements/White_belt-first_share.jpg  |
    | Yellow Belt  | First Combo Share    | achievements/Yellow_belt-first_combo_share.jpg |
    | Orange Belt  | 5 Shares             | achievements/Orange_belt-five_shares.jpg  |
    And the following unlocked achievements records
    | player_id | achievement_id |
    | 1         | 1              |  
    | 1         | 3              |  
    | 2         | 1              |  
    | 2         | 2              |  
    | 3         | 3              |  
    And I am logged in    
    When I visit the achievement "White Belt"
    Then I should see "White Belt"
    And I should see "First Share"
    And I should see "Arthur"
    And I should see "Bruno"

    When I visit the achievement "Yellow Belt"
    Then I should see "Yellow Belt"
    And I should see "First Combo Share"
    And I should not see "Arthur"
    And I should see "Bruno"

    When I visit the achievement "Orange Belt"
    Then I should see "Orange Belt"
    And I should see "5 Shares"
    And I should see "Danilo"
    And I should see "Arthur"
    And I should not see "Bruno"
