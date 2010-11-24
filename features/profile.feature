Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Show player name
		Given the following player records
	      	| username | picture |
	      	| Danilo | danilo.png |
		When I am on "Danilo" profile page
		Then I should see "danilo.png"
	
	Scenario: Show points
		Given the following player records
	      	| username | picture | points |
	      	| Danilo | danilo.png | 15 |
		When I am on "Danilo" profile page
		Then I should see points "15"

	Scenario: Showing activity feed
		Given the following player records
	      	| username |
	      	| Danilo |
		And the following task share records
		| player_id | task |
	    	| 1 | making Vx 680 demo animation |
		When I am on "Danilo" profile page
		Then I should see "making Vx demo animation"
