#Author: Vladimir Ni
# FEB-282 - Manual Test Set


Feature: Appointment related test scenarios

  Scenario: Make an appointment and delete an appointment

    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"

    #Login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"

    #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
    And element with xpath "//h1[contains(text(),'James Johnson')]" should be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

    #Make an appointment
    When I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//span[contains(text(), 'Make an appointment')]" to be present

            #Fill out appointment details
    And I type "VladimirN Unique appointment theme" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 1 sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[6]"
    And I type '04/23/2024' into element with xpath "//input[@id='date']"
    And I wait for 1 sec
    And I click on element with xpath "//button[contains(text(),'01:00 PM')]"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    #Verify that the appointment is created and in the list of the appointments
    Then element with xpath "//p[contains(text(),'VladimirN Unique appointment theme')]" should be present
    Then element with xpath "//p[contains(text(),'VladimirN Unique appointment theme')]" should contain text 'VladimirN Unique appointment theme'
    Then I wait for element with xpath "//p[contains(text(),'VladimirN Unique appointment theme')]//ancestor::article/div[2]/span[contains(text(),'update')]" to be present
    And I click on element with xpath "//p[contains(text(),'VladimirN Unique appointment theme')]//ancestor::article/div[2]/span[contains(text(),'update')]"
    #Verify that confirmation window pops up
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present
    And element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text 'Are you sure you want to cancel appointment?'
    #Canceling the appointment
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    And I wait for 1 sec
    #Verification of the appointment cancellation
    #And element with xpath "//p[contains(text(),'VladimirN Unique appointment theme')]" should not be present

