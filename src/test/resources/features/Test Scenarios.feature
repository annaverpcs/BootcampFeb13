Feature: login page
  Scenario: login as administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    And I wait for 5 sec
    When I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present