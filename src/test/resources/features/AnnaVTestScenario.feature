# Author: Anna Verkhovskaya
  # FEB-50 - manual test cases
  # This test Scenarios for different type of logins
@medicenter
Feature:Login to Medical Center
  #prerequisites for tes scenarios
  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present


  Scenario: Login as Administrator
   # Given I open url "https://medicenter-qa2.vercel.app/"
    #Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
   # Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
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
   # Given I open url "https://medicenter-qa2.vercel.app/"
   # Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
   # Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
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

#data driven scenario
  Scenario Outline: Login as Patient data driven scenario
    #Given I open url "https://medicenter-qa2.vercel.app/"
    #Then I click on element with xpath "//button[contains(text(),'Login')]"
    #Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type <EmailAddress> into element with xpath "//input[@id='email']"
    Then I type <Password> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath <xpathLoggedInPatient> to be present
    And element with xpath <xpathLoggedInPatient> should be present
    And element with xpath <xpathLoggedInPatient> should contain text <FullName>
    Examples:
    | EmailAddress                 | Password    | xpathLoggedInPatient                    | FullName |
    | "patient1@gmail.com"         |  "abc123"   | "//h1[contains(text(),'James Johnson')]"| "James Johnson" |
    | "patient2@gmail.com"         |  "abc123"   | "//h1[contains(text(),'Ben Simpson')]"| "Ben Simpson" |
    | "patient3@gmail.com"         |  "abc123"   | "//h1[contains(text(),'Alice Wonderland')]"| "Alice Wonderland" |
    | "administrator1@gmail.com"   |  "abc123"   | "//h1[contains(text(),'Mary Poppins')]"| "Mary Poppins" |
    | "patient1@gmail.com"         |  "abc123"   | "//h1[contains(text(),'James Johnson')]"| "Incorrect name" |