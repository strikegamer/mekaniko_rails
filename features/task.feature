Feature: Task
  In order to let everybody know what's going on
  As a player
  I want share tasks

  Scenario: Show task
    Given I am logged in
    And the following achievement records
      | title      | description | image                                   |
      | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And the following task records
      | player_id | description |
      | 1         | Lorem Ipsum |
    When I visit the task "Lorem Ipsum"
    Then I should see "Lorem Ipsum"
    And I should see "luisbebop"

  Scenario: Comment
    Given I am logged in
    And the following achievement records
      | title      | description | image                                   |
      | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And the following task records
      | player_id | description |
      | 1         | Lorem Ipsum |
    When I visit the task "Lorem Ipsum"
    Then I should see "Leave the first comment!"
    And I fill in "comment_content" with "Here we go!"
    And I press "Post comment"
    Then I should see "Comments (1)"
    And I should see "luisbebop"
    And I should see "Here we go!"