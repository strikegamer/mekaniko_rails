Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Showing activity feed
		Given Danilo has shared items
		When I am on "Danilo" profile page
		Then show all shared items by Danilo

	Scenario: Showing achievements
		Given I am on "Danilo" profile page
		And Danilo has achievements
		Then show achievements by Danilo
