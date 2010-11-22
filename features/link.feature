Feature: Link
  In order to let everybody know what's going on
  As a player
  I want share links

  Scenario: Show link
    Given the following player records
      | name          | picture                                      | points|
      | Bruno Freitas | http://planobe.com.br/images/photo-bruno.png | 10    |
    And the following link records
      | user_id | description | ref                   |
      | 1       | Lorem Ipsum | http://planobe.com.br |
    When I visit the link "Lorem Ipsum"
    Then I should see "Lorem Ipsum"
