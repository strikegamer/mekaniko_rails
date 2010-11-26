Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Show player name
		Given the following player records
	      	| name | picture | points |
	      	| Danilo | danilo.png | 15 |
		When I visit the "Danilo" profile page
		Then I should see "Danilo"
	
	Scenario: Show points
		Given the following player records
	      	| name | picture | points |
	      	| Danilo | danilo.png | 15 |
		When I visit the "Danilo" profile page
		Then I should see points "15"

	Scenario: Showing activity feed
		Given the following player records
	      	| name | picture | points |
	      	| Danilo | danilo.png | 15 |
		And the following task records
		| player_id | description |
	    	| 1 | making Vx680 demo |
		When I visit the "Danilo" profile page
		Then I should see "making Vx680 demo"

	Scenario: Show share counters
		Given the following player records
	      	| name | picture | points |
	      	| Danilo | danilo.png | 15 |
		And the following task records
		| player_id | description |
	    	| 1 | making Vx680 demo |
		| 1 | making Vx520 demo |
		When I visit the "Danilo" profile page
		Then I should see "2"
