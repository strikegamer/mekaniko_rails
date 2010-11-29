Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Show player name
		Given the following users records
	      | name     | profile_image_url  | points|
      	| Danilo | danilo.png         | 15      |
    And I am logged in
		When I visit the "Danilo" profile page
		Then I should see "Danilo"
	
	Scenario: Show points
	Given the following users records
      | name     | profile_image_url  | points|
    	| Danilo | danilo.png         | 15      |
    And I am logged in
		When I visit the "Danilo" profile page
		Then I should see points "15"

	Scenario: Showing activity feed
	Given the following users records
      | name     | profile_image_url  | points|
    	| Danilo | danilo.png         | 15      |
			And the following achievement records
	      | title      | description | image                                   |
	      | White Belt | First Share | achievements/White_belt-first_share.jpg |
		And the following task records
				| player_id | description |
	    	| 1 | making Vx680 demo |
    And I am logged in
		When I visit the "Danilo" profile page
		Then I should see "making Vx680 demo"

	Scenario: Show share counters
	Given the following users records
      | name     | profile_image_url  | points|
    	| Danilo | danilo.png         | 15      |
			And the following achievement records
	      | title      | description | image                                   |
	      | White Belt | First Share | achievements/White_belt-first_share.jpg |
		And the following task records
		| player_id | description |
	  | 1         | making Vx680 demo |
		| 1         | making Vx520 demo |
    And I am logged in
		When I visit the "Danilo" profile page
		Then I should see "2"
