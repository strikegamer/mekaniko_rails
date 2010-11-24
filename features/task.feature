Feature: Task
  In order to let everybody know what's going on
  As a player
  I want share tasks

  Scenario: Show task
    Given the following player records
      | name          | picture                                      | points|
      | Bruno Freitas | http://planobe.com.br/images/photo-bruno.png | 10    |
    And the following task records
      | player_id | description |
      | 1         | Lorem Ipsum |
    When I visit the task "Lorem Ipsum"
    Then I should see "Lorem Ipsum"

  Scenario: Comment
    Given the following player records
      | name          | picture                                      | points|
      | Bruno Freitas | http://planobe.com.br/images/photo-bruno.png | 10    |
    And the following task records
      | player_id | description |
      | 1         | Lorem Ipsum |
    When I visit the task "Lorem Ipsum"
    Then I should see "Leave the first comment!"
    And I fill in "comment_content" with "Here we go!"
    And I press "Post comment"
    Then I should see "Comments (1)"
    And I should see "Bruno Freitas"
    And I should see "Here we go!"