Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Show player name
		Given the following player records
	      	| name | picture |
	      	| Danilo | danilo.png |
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
	      	| name |
	      	| Danilo |
		And the following task records
		| player_id | description | created_at |
	    	| 1 | making Vx 680 demo animation | 2010/09/11 |
		When I visit the "Danilo" profile page
		Then I should see "making Vx demo animation"
