Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Show player name
		Given the following player records
	      	| name | picture | points | created_at | updated_at |
	      	| Danilo | danilo.png | 15 | 2010-11-24 17:12:54 | 2010-11-24 17:12:54 |
		When I visit the "Danilo" profile page
		Then I should see "Danilo"
	
	Scenario: Show points
		Given the following player records
	      	| name | picture | points | created_at | updated_at |
	      	| Danilo | danilo.png | 15 | 2010-11-24 17:12:54 | 2010-11-24 17:12:54 |
		When I visit the "Danilo" profile page
		Then I should see points "15"

	Scenario: Showing activity feed
		Given the following player records
	      	| name | picture | points | created_at | updated_at |
	      	| Danilo | danilo.png | 15 | 2010-11-24 17:12:54 | 2010-11-24 17:12:54 |
		And the following task records
		| player_id | description | created_at | updated_at |
	    	| 2 | making Vx680 demo | 2010-11-25 12:20:05 | 2010-11-25 12:20:05 |
		When I visit the "Danilo" profile page
		Then I should see "making Vx680 demo"

	Scenario: Show share counters
		Given the following player records
	      	| name | picture | points | created_at | updated_at |
	      	| Danilo | danilo.png | 15 | 2010-11-24 17:12:54 | 2010-11-24 17:12:54 |
		And the following task records
		| player_id | description |
	    	| 2 | making Vx680 demo |
		| 2 | making Vx520 demo |
		When I visit the "Danilo" profile page
		Then I should see "2"
