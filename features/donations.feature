Feature: Donation requests
  In order to show support for my favorite artists
  As a music lover
  I want to request to donate to my favorite artists

  Scenario: Create donation request
    Given I am viewing the new donation page
    And I create the following donation requests:
      | artist    | amount |
      | DoomSword | 666.66 |
    When I am viewing the donation list page
    Then I should see the following donation requests:
      | Artist name | Amount |
      | DoomSword   | 666.66 |