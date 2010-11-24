Feature: Dashboard
	In order to share content
	As a player
	I want to share links, tasks and experiences

	Scenario: Player logged
		Given I am logged in
		And I am on the dashboard page
		Then I should see "Ranking"
