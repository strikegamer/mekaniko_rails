Feature: Authentication
	In order to create and see shares
	As a player
	I want to log in

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
		Given I have no Username, Password
		And I have Twitter account
		When I press "Connect to Twitter"
		Then I get Username, Password
