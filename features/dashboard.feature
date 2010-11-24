@working
Feature: Dashboard
	In order to share content
	As a player
	I want to share links, tasks and experiences

	Scenario: Ranking List
		Given I am on the dashboard page
		And I have players listed on Ranking
		Then I should see "Ranking"
