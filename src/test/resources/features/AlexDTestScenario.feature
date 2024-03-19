# Author: Oleksandr Dubynskyi
  # FEB-  - manual test cases
  # This test Scenarios for different type of logins

Feature: Login to Medical Center

  Scenario: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    # login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    #logout
  Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

  Scenario: Login as Patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    # login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
    And element with xpath "//h1[contains(text(),'James Johnson')]" should be present
    And element with xpath "//h1[contains(text(),'James Johnson')]" should contain text "James Johnson"
    #logout
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"
