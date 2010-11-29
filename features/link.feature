Feature: Link
  In order to let everybody know what's going on
  As a player
  I want share links

  @share
  Scenario: Show link
    Given I am logged in
    And the following achievement records
      | title      | description | image                                   |
      | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And the following link records
      | player_id | description | ref                   |
      | 1         | Lorem Ipsum | http://planobe.com.br |
    When I visit the link "Lorem Ipsum"
    Then I should see "Lorem Ipsum"
    And I should see "luisbebop"

  @share
  Scenario: Comment
    Given I am logged in
    And the following achievement records
      | title      | description | image                                   |
      | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And the following link records
      | player_id | description | ref                   |
      | 1         | Lorem Ipsum | http://planobe.com.br |
    When I visit the link "Lorem Ipsum"
    Then I should see "Leave the first comment!"
    And I fill in "comment_content" with "Here we go!"
    And I press "Post comment"
    Then I should see "Comments (1)"
    And I should see "luisbebop"
    And I should see "Here we go!"