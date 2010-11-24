Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Showing activity feed
		Given the following player records
	      | username |
	      | Danilo |
		And the following link share records
		| player_id | description | link |
	    | 1 | dogs rolling in the snow | www.dogsinthesnow.com |
		And the following task share records
		| player_id | task |
	    | 1 | making Vx 680 demo animation |
		When I am on "Danilo" profile page
		Then I should see 
		
	Scenario: Showing achievements
		Given I am on "Danilo" profile page
		And Danilo has achievements
		Then show achievements by Danilo