Feature: Profile page
	In order see player information
	As a player
	I want to have a profile page

	Scenario: Showing activity feed
		Given I am on "Danilo" profile page
		And Danilo has shared items
		Then show all shared items by Danilo

	Scenario: Showing achievements
		Given I am on "Danilo" profile page
		And Danilo has achievements
		Then show achievements by Danilo
