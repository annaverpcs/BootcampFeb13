# Author: ELena Zaretskaia
  #FEB-? - manual test cases
  #This test Scenarios for different type of logins

Feature: Login to Medical Center

  Scenario Outline: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
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
    Then I click on element with xpath "//button[contains(text(),'Logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

  Scenario Outline: Login as Patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "tester0224@yahoo.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Helen Zar')]" to be present
    And element with xpath "//h1[contains(text(),'Helen Zar')]" should be present
    And element with xpath "//h1[contains(text(),'Helen Zar')]" should contain text "Helen Zar"
    #logout
    Then I click on element with xpath "//button[contains(text(),'Logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"



