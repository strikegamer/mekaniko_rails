Feature: Dashboard
	In order to share content
	As a player
	I want to share links, tasks and experiences

	Scenario: Ranking List
		Given the following users records
			| name             | picture                                         | points|
    		| Danilo Matias    | http://planobe.com.br/images/photo-danilo.png   | 66    |
			| Bruno Freitas    | http://planobe.com.br/images/photo-bruno.png    | 43    |
			| Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 24    |
		When I am on Dashboard
	 	And I have players listed on Ranking
	  		| name             | picture                                         | points|
    		| Danilo Matias    | http://planobe.com.br/images/photo-danilo.png   | 66    |
			| Bruno Freitas    | http://planobe.com.br/images/photo-bruno.png    | 43    |
			| Dennis Moons     | http://planobe.com.br/images/photo-dennis.png   | 24    |
		Then I should see "Ranking"

	Scenario: Leaderboard Link
		Given I am on Dashboard
		When I follow "Goto the Leaderboard"
		Then I should see "Leaderboard"

  	Scenario: Sharing Task
    	Given the following player records
    	  | name          | picture                                       | points|
    	  | Danilo Matias | http://planobe.com.br/images/photo-danilo.png | 25    |
    	And the following task records
    	  | player_id | description    | task_helpers   |
    	  | 1         | Making a demo! |                |
		And I am on Dashboard
		When I choose "radio_button_task"
		And I fill in textarea with "Making a demo!"
		And I press "Share!" button
		Then I should see "Activity"
		And I should see "Danilo Matias"
		And I should see "Making a demo!"

	@working
	Scenario: Activity List
		Given the following player records
			| name          | picture                                       | points|
			| Danilo Matias | http://planobe.com.br/images/photo-danilo.png | 25    |
			| Bruno Freitas | http://planobe.com.br/images/photo-bruno.png  | 43    |
			| Dennis Moons  | http://planobe.com.br/images/photo-dennis.png | 24    |
			| Luis Silva    | http://planobe.com.br/images/photo-luis.png   | 11    |
    	And the following task records
			| player_id | description    | task_helpers   |
			| 1         | Making a demo! |                |
		And the following xp records
			| player_id | description   |
			| 2         | read The Mist |
		And the following link records
			| player_id | description     | ref                                     |
			| 3         | Awesome numbers | http://www.plataformawalk.com.br        |
		And the following achievement records
			| player_id | title               |
			| 4         | Desclassificado!    |
		When I am on Dashboard
		Then I should see "Activity"
		And I should see "Danilo Matias"
		And I should see "Making a demo!"
		And I should see "Bruno Freitas"
		And I should see "read The Mist"
		And I should see "Dennis Moons"
		And I should see "Awesome numbers"
		And I should see "Luis Silva"
		And I should see "Desclassificado!"
    
    
    
