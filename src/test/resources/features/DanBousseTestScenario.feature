#Author: Dan B
# FEB-155 manual tc
#This test scenarios for different types of logins
@medicenter
Feature: Login to Medical Center

  Scenario: Login as administrator

    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    #sign_in page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #Admin home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    #And I wait for 2 sec
    Then I click on element with xpath "//button[text()='Logout']"
    Then I wait for element with xpath "//button[contains(text(),'Login')]" to be present

  Scenario: Login as patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    #sign_in page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "patient2@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #Patient home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And I wait for element with xpath "//h1[contains(text(),'Ben Simpson')]" to be present
    And element with xpath "//h1[contains(text(),'Ben Simpson')]" should contain text "Ben Simpson"
    Then I click on element with xpath "//button[text()='Logout']"
    Then I wait for element with xpath "//button[contains(text(),'Login')]" to be present