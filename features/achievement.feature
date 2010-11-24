Feature: Achievement
  In order to show achievement details
  As a player
  I want see achievement details

  Scenario: Show achievement page
    Given the following player records
      | name          | picture                                      | points|
      | Jean Orlando  | http://planobe.com.br/images/photo-jean.png  | 10    |
    And the following achievement records
      | player_id | title               | detail                              |   image                                      |
      | 1         | Golden Phone        | Make 10 phone calls                 | http://planobe.com.br/images/photo-phone.png |
    When I visit the achievement "Golden Phone"
    Then I should see "Golden Phone"
    And I should see "10 phone calls"
    And I should see "Jean"
