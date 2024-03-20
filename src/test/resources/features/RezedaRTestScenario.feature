#Author: Rezeda Ryzhkov
@medicenter
Feature: Login to Medical Center
  
  Scenario: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Login')]"

    #Login page
  Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
  Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
   #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    #Logout
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present


    Then I wait for 3 sec