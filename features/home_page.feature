Feature: Home page
  In order to support artists and fans
  As a music lover
  I visit the home page of Repay Music

  Scenario: Viewing home page
    Given I am viewing the home page
    Then I should see a music video related to the last donation
