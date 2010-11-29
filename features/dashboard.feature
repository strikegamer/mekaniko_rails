Feature: Dashboard
  In order to share content
  As a player
  I want to share links, tasks and experiences

  Scenario: Ranking List
    Given I am logged in
    And the following users records
      | name     | profile_image_url                               | points|
      | Arthur   | http://planobe.com.br/images/photo-arthur.png   | 40    |
      | Bruno    | http://planobe.com.br/images/photo-bruno.png    | 55    |
      | Danilo   | http://planobe.com.br/images/photo-danilo.png   | 42    |
    When I am on Dashboard
    Then I should see the users on the following order
      | name     | profile_image_url                               | points|
      | Bruno    | http://planobe.com.br/images/photo-bruno.png    | 55    |
      | Danilo   | http://planobe.com.br/images/photo-danilo.png   | 42    |
      | Arthur   | http://planobe.com.br/images/photo-arthur.png   | 40    |

  Scenario: Create a new Task
    Given the following achievement records
      | title      | description | image                                   |
      | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And I am logged in
    When I choose "set-Task"
    And I fill in "share_description" with "Just a new Task"
    And I press "Share!"
    Then I should be on first Task
    And I should have "1" points
    And I should see "Just a new Task"

  Scenario: Create a new Link
   Given the following achievement records
    | title      | description | image                                   |
    | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And I am logged in
    When I choose "set-Link"
    And I fill in "share_description" with "Just a new Link"
    And I fill in "share_ref" with "http://www.planobe.com.br"
    And I press "Share!"
    Then I should be on first Link
    And I should have "1" points
    And I should see "Just a new Link"

  Scenario: Create a new Xp
    Given the following achievement records
    | title      | description | image                                   |
    | White Belt | First Share | achievements/White_belt-first_share.jpg |
    And I am logged in
    When I choose "set-Xp"
    And I fill in "share_description" with "Just a new Xp"
    And I press "Share!"
    Then I should be on first Xp
    And I should have "1" points
    And I should see "Just a new Xp"

  #TODO: Scenario for the Activity