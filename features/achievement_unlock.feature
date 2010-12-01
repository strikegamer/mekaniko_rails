Feature: Achievement Unlock
  In order to unlock achievements
  As a player
  I want play the game and check the rules

Scenario: Unlock White Belt
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I posted "1" "Link"
    And  I should unlock the "White Belt" achievement

Scenario: Unlock Yellow Belt
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I posted "1" "Link"
    And  I posted "1" "Task"
    And  I posted "1" "Xp"
    Then I should have "3" shares
    And  I should unlock the "Yellow Belt" achievement

Scenario: Unlock Orange Belt
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I posted "2" "Link"
    And  I posted "2" "Task"
    And  I posted "1" "Xp"
    Then I should have "5" shares
    And I should unlock the "Orange Belt" achievement

Scenario: Unlock Green Belt
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I posted "5" "Link"
    Then I should have "5" shares
    And I should unlock the "Green Belt" achievement

Scenario: Unlock Blue Belt
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I posted "10" "Link"
    And I posted "5" "Xp"
    And I posted "5" "Task"
    Then I should have "20" shares
    And I should unlock the "Blue Belt" achievement

Scenario: Unlock Brown Belt
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
    | Brown Belt    | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I posted "10" "Link"
    And I posted "20" "Xp"
    And I posted "20" "Task"
    Then I should have "50" shares
    And I should unlock the "Brown Belt" achievement

Scenario: Unlock Good Boy
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
    | Brown Belt    | Description Sample  | imageurlsample.jpg   |
    | Good Boy      | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I help "1" times in an anyone Task
    And I should unlock the "Good Boy" achievement

Scenario: Unlock Santas Little Helper
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
    | Brown Belt    | Description Sample  | imageurlsample.jpg   |
    | Good Boy      | Description Sample  | imageurlsample.jpg   |
    | Santas Little Helper | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I help "5" times in an anyone Task
    And I should unlock the "Santas Little Helper" achievement

Scenario: Unlock Good Samaritan
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
    | Brown Belt    | Description Sample  | imageurlsample.jpg   |
    | Good Boy      | Description Sample  | imageurlsample.jpg   |
    | Santas Little Helper | Description Sample  | imageurlsample.jpg   |
    | Good Samaritan       | Description Sample  | imageurlsample.jpg   |
  And I am logged in
    When I help "15" times in an anyone Task
    And I should unlock the "Good Samaritan" achievement

Scenario: Unlock Think of yourself
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
    | Brown Belt    | Description Sample  | imageurlsample.jpg   |
    | Good Boy      | Description Sample  | imageurlsample.jpg   |
    | Santas Little Helper   | Description Sample  | imageurlsample.jpg     |
    | Good Samaritan         | Description Sample  | imageurlsample.jpg     |
    | Think of yourself      | Description Sample  | imageurlsample.jpg     |
  And I am logged in
    When I help "25" times in an anyone Task
    And I should unlock the "Think of yourself" achievement

Scenario: Unlock Jezus
  Given the following achievement records
    | title         | description          | image               |
    | White Belt    | Description Sample  | imageurlsample.jpg   |
    | Yellow Belt   | Description Sample  | imageurlsample.jpg   |
    | Orange Belt   | Description Sample  | imageurlsample.jpg   |
    | Green Belt    | Description Sample  | imageurlsample.jpg   |
    | Blue Belt     | Description Sample  | imageurlsample.jpg   |
    | Brown Belt    | Description Sample  | imageurlsample.jpg   |
    | Good Boy      | Description Sample  | imageurlsample.jpg   |
    | Santas Little Helper   | Description Sample  | imageurlsample.jpg     |
    | Good Samaritan         | Description Sample  | imageurlsample.jpg     |
    | Think of yourself      | Description Sample  | imageurlsample.jpg     |
    | Jezus                  | Description Sample  | imageurlsample.jpg     |
  And I am logged in
    When I help "50" times in an anyone Task
    And I should unlock the "Jezus" achievement


