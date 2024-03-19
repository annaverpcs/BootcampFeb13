# Author: ELena Zaretskaia
  #FEB-? - manual test cases

Feature: Appointment related test scenarios

  Scenario: Make an appointment and delete an appointment
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
    #create new appointment
    When I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
    #fill out appointment details
    And I type "ElenaZ Unique" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 1 sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[79]"
    And I type "03/26/2024" into element with xpath "//input[@id='date']"
    And I wait for 1 sec
    And I click on element with xpath "//button[contains(text(),'09:00 AM')]"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify that an appointment is created and is in the list of appointment
    Then I wait for element with xpath "//p[contains(text(),'ElenaZ Unique')]" to be present
    Then element with xpath "//p[contains(text(),'ElenaZ Unique')]" should contain text "ElenaZ Unique"
    Then I wait for element with xpath "//p[contains(text(),'ElenaZ Unique')]//ancestor::article/div[2]/span[contains(text(),'update')]" to be present
    And I click on element with xpath "//p[contains(text(),'ElenaZ Unique')]//ancestor::article/div[2]/span[contains(text(),'update')]"
    #confirmation window pop up
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present
    And element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text "Are you sure you want to cancel appointment?"
    #cancel an appointment
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    And I wait for 3 sec
    #verification of appointment cancellation
    And element with xpath "//p[contains(text(),'ElenaZ Unique')]" should not be present