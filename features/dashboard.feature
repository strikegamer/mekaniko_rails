@working
Feature: Dashboard
	In order to share content
	As a player
	I want to share links, tasks and experiences

	Scenario: Ranking List
		Given the following users records
		| name             | picture                                         | points|
    | Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 43    |
	  When I am on Dashboard
	  And I have players listed on Ranking
	  | name             | picture                                         | points|
    | Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 43    |
		Then I should see "Ranking"
