Feature: XP
  In order to let everybody know what's going on
  As a player
  I want share experiences

  @share
  Scenario: Show xp
    Given I am logged in
    And the following xp records
      | player_id | description |
      | 1         | Lorem Ipsum |
    When I visit the xp "Lorem Ipsum"
    Then I should see "Lorem Ipsum"
    And I should see "luisbebop"

  @share
  Scenario: Comment
    Given I am logged in
    And the following xp records
      | player_id | description |
      | 1         | Lorem Ipsum |
    When I visit the xp "Lorem Ipsum"
    Then I should see "Leave the first comment!"
    And I fill in "comment_content" with "Here we go!"
    And I press "Post comment"
    Then I should see "Comments (1)"
    And I should see "luisbebop"
    And I should see "Here we go!"