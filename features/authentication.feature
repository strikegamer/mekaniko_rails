Feature: Authentication
	In order to create and see shares
	As a player
	I want to log in

	Scenario: Player login
		Given I am not logged in
		And I am on the login page
		And I have a Username, Password
		When I fill in "Username" with "Dennis"
		And I fill in "Password" with "tetten"
		And I press "Login"
		Then I should see "Login successful."
		And show me the dashboard page

	Scenario: Login fail
		Given I am not logged in
		And I am on the login page
		And I have a Username, Password
		When I fill in "Username" with "Dennis"
		And I fill in "Password" with "cat"
		And I press "Login"
		Then I should see "Login failed."

	Scenario: Player creation
		Given I have no Username, Password
		And I have Twitter account
		When I press "Connect to Twitter"
		Then I get Username, Password
