Feature: Authentication
	In order to play in mekaniko and conquer the mekaniko's world
	As a player
	I want to log in

  @working
  Scenario: Login via Twitter
    When I go to the login page
    And I follow "Login via Twitter"
    And Twitter authorizes me
    Then I should see "Logged in as"

	Scenario: Player login
		Given I am not logged in
		And I am on the login page
		And the following player records
	      | username | password |
	      | Danilo | dogsRcute |
		When I fill in "username" with "Danilo"
		And I fill in "password" with "dogsRcute"
		And I press "Login"
		Then I should see "Login successful."
		And show me the dashboard page

	Scenario: Login fail
		Given I am not logged in
		And I am on the login page
		And the following player records
	      | username | password |
	      | Danilo | dogsRcute |
		When I fill in "username" with "Danilo"
		And I fill in "password" with "catsRcute"
		And I press "Login"
		Then I should see "Login failed."

	Scenario: Player creation
		Given I have no username, password
		And I have Twitter account
		When I press "Connect to Twitter"
		Then I get Username, Password

	Scenario: Nav bar
		Given I have no Username, Password
		When I am on the login page
		Then I should not see the navigation bar
		
	Scenario: redirect
		Given I am not logged in
		When I visit dashboard
		Then I should go to login page