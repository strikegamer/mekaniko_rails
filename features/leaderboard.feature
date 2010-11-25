Feature: Leaderboard
  In order to see the rank of players
  As a player
  I want to have a leaderboard page

  Scenario: Show Rank
    Given I am logged in
    And the following users records
      | name             | picture                                         | points|
      | Arthur Macedo    | http://planobe.com.br/images/photo-arthur.png   | 38    |
      | Bruno Freitas    | http://planobe.com.br/images/photo-bruno.png    | 32    |
      | Danilo Matias    | http://planobe.com.br/images/photo-danilo.png   | 40    |
      | Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 43    |
      | Eliezer Pimentel | http://planobe.com.br/images/photo-eliezer.png  | 25    |
      | Gabriela Gomide  | http://planobe.com.br/images/photo-gabriela.png | 36    |
      | Jean Paulo       | http://planobe.com.br/images/photo-jean.png     | 30    |
      | Luis Silva       | http://planobe.com.br/images/photo-luis.png     | 28    |
    When I am on Leaderboard
    Then show the users sorted
      | name             | picture                                         | shares| points|
      | Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 0     | 43    |
      | Danilo Matias    | http://planobe.com.br/images/photo-danilo.png   | 0     | 40    |
      | Arthur Macedo    | http://planobe.com.br/images/photo-arthur.png   | 0     | 38    |
      | Gabriela Gomide  | http://planobe.com.br/images/photo-gabriela.png | 0     | 36    |
      | Bruno Freitas    | http://planobe.com.br/images/photo-bruno.png    | 0     | 32    |
      | Jean Paulo       | http://planobe.com.br/images/photo-jean.png     | 0     | 30    |
      | Luis Silva       | http://planobe.com.br/images/photo-luis.png     | 0     | 28    |
      | Eliezer Pimentel | http://planobe.com.br/images/photo-eliezer.png  | 0     | 25    |
      
  Scenario: Profile Link
		Given I am on Leaderboard
		And the following users records
      | name             | picture                                           | points|
      | Gabriela Gomide  | http://planobe.com.br/images/photo-gabriela.png   | 38    |
    When I am on Leaderboard
		And I follow "Gabriela Gomide"
		Then I should see "Gabriela Gomide"

