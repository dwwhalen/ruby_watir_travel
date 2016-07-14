Feature: Login

  Scenario: Login and Logoff
    Given I login with id "user@phptravels.com" and password "demouser"
    And the Account page is displayed
    When I choose to Logoff
    Then the Login page is displayed