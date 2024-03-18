# Author: Eduard Yevdokiienko
  # FEB-13 - manual test cases
  # As an administrator, I can review an appointment in Calendar
  # As an administrator, I can edit a specialist data

Feature: As an administrator, I can edit a specialist data

  Scenario: Administrator has "edit" button at specialists
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    # Make sure that administrator has "edit" button at specialists
    Then I wait for element with xpath "//button[contains(text(),'Specialists')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Specialists')]"
    And I wait for element with xpath "//span[@id=':r32:']" to be present
  Scenario: Administrator can  initiate and complete whole editing process with filling all fields
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    # edit specialist data
    Then I wait for element with xpath "//button[contains(text(),'Specialists')]" to be present
    And I wait for element with xpath "//td[contains(text(),'Diego Rivera')]" to be present
    Then I click on element with xpath "//span[@id=':r27:']"
    And I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
    And I wait for element with xpath "//input[@id='first_name']" to be present
    When I clear element with xpath "//input[@id='first_name']"
    Then I type "Diego1" into element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "Rivera1" into element with xpath "//input[@id='last_name']"
    And I wait for 2 sec
    Then I click on element with xpath "//*[@name='role']"
    And I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I wait for element with xpath "//label[contains(text(),'Mon')]" to be present
    Then I type "10:30" into element with xpath "//input[@id='working_hours.monday.from']"
    And I type "15:25" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I type "11:30" into element with xpath "//input[@id='working_hours.wednesday.from']"
    And I type "16:25" into element with xpath "//input[@id='working_hours.wednesday.to']"
    Then I type "12:30" into element with xpath "//input[@id='working_hours.friday.from']"
    And I type "17:25" into element with xpath "//input[@id='working_hours.friday.to']"
    # Save and verify
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 3 sec
  Scenario: Click on the "Cancel" button while editing specialist data
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    # edit specialist data
    Then I wait for element with xpath "//button[contains(text(),'Specialists')]" to be present
    And I wait for element with xpath "//td[contains(text(),'Diego Rivera')]" to be present
    Then I click on element with xpath "//span[@id=':r27:']"
    And I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
    And I wait for element with xpath "//input[@id='first_name']" to be present
    When I clear element with xpath "//input[@id='first_name']"
    Then I type "Diego1" into element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "Rivera1" into element with xpath "//input[@id='last_name']"
    And I wait for 2 sec
    Then I click on element with xpath "//*[@name='role']"
    And I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I wait for element with xpath "//label[contains(text(),'Mon')]" to be present
    Then I type "10:30" into element with xpath "//input[@id='working_hours.monday.from']"
    And I type "15:25" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I type "11:30" into element with xpath "//input[@id='working_hours.wednesday.from']"
    And I type "16:25" into element with xpath "//input[@id='working_hours.wednesday.to']"
    Then I type "12:30" into element with xpath "//input[@id='working_hours.friday.from']"
    And I type "17:25" into element with xpath "//input[@id='working_hours.friday.to']"
    # Close
    Then I click on element with xpath "//span[contains(text(),'close')]"
    And I wait for 3 secgit status


