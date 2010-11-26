Feature: Leaderboard
  In order to see the rank of players
  As a player
  I want to have a leaderboard page

  Scenario: Show Rank
    Given I am logged in
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
      
    When I am on Leaderboard
    Then show the users sorted
      | name     | profile_image_url                              | shares | points|
      | Dennis   | http://planobe.com.br/images/photo-dennis.png  | 0      |  43   |
      | Danilo   | http://planobe.com.br/images/photo-danilo.png  | 0      |  40   |
      | Arthur   | http://planobe.com.br/images/photo-arthur.png  | 0      |  38   |
      | Gabriela | http://planobe.com.br/images/photo-gabriela.png| 0      |  36   |
      | Bruno    | http://planobe.com.br/images/photo-bruno.png   | 0      |  32   |
      | Jean     | http://planobe.com.br/images/photo-jean.png    | 0      |  30   |
      | Luis     | http://planobe.com.br/images/photo-luis.png    | 0      |  28   |
      | Eliezer  | http://planobe.com.br/images/photo-eliezer.png | 0      |  25   |
      
  Scenario: Profile Link
    Given I am logged in
		And the following users records
      | name    | profile_image_url                                 | points|
      |Gabriela | http://planobe.com.br/images/photo-gabriela.png   | 38    |
    When I am on Leaderboard
		And I follow "Gabriela"
		Then I should see "Gabriela"

