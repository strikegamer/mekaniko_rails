@luisbebop
Feature: Authentication
	In order to play in mekaniko and conquer the mekaniko's world
	As a player
	I want to play the game

  Scenario: Login via Twitter
    When I go to the start page
    And I follow "Click here to connect with Twitter"
    And Twitter authorizes me
    Then I should see "Home"
    And I should see "My Profile"
    And I should see "Leaderboard"
    And I should see "logout"
    And I should have one user in my database

	Scenario: Player creation
		Given I am logged in
		When I go to the dashboard page
		Then I should have the following player on my database
		 |player-id | player-user-id| player-user-login | player-user-name | player-user-twitter_id |
     |1         | 1             | luisbebop         | luisbebop        | 15160417               |
