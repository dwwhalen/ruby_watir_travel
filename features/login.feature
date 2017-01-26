Feature: Login

  Scenario:Remember me, login and logoff
    Given I navigate to the Login page
    And the Login page is displayed
    Given I login with id "user@phptravels.com" and password "demouser" and remember me unchecked
    And the Account page is displayed
    When I choose to Logoff
    Then the Login page is displayed