Feature: Leaderboard
  In order to see the rank of players
  As a player
  I want to have a leaderboard page

  Scenario: Show Rank
    Given the following users records
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
      | name             | picture                                         | points|
      | Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 43    |
      | Danilo Matias    | http://planobe.com.br/images/photo-danilo.png   | 40    |
      | Arthur Macedo    | http://planobe.com.br/images/photo-arthur.png   | 38    |
      | Gabriela Gomide  | http://planobe.com.br/images/photo-gabriela.png | 36    |
      | Bruno Freitas    | http://planobe.com.br/images/photo-bruno.png    | 32    |
      | Jean Paulo       | http://planobe.com.br/images/photo-jean.png     | 30    |
      | Luis Silva       | http://planobe.com.br/images/photo-luis.png     | 28    |
      | Eliezer Pimentel | http://planobe.com.br/images/photo-eliezer.png  | 25    |
