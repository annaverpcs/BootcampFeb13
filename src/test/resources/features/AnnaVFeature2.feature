#Author: Anna Verkhovskaya
  # FEB-50 - manual test cases

Feature: Appointment related test scenarios

  Scenario: Make an appointment and delete an appointment
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
    And element with xpath "//h1[contains(text(),'James Johnson')]" should be present
    And element with xpath "//h1[contains(text(),'James Johnson')]" should contain text "James Johnson"
      #create new appointment
    When I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
      #fill out appointment details
    And I type "AnnaV Unique appointment theme 1 " into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 1 sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[5]"
    And I type "03/13/2024" into element with xpath "//input[@id='date']"
    And I wait for 1 sec
    And I click on element with xpath "//button[contains(text(),'02:45 PM')]"
    And I click on element with xpath "//button[contains(text(),'Save')]"
      #verify that the appointment is created and is in the list of appointments
    Then I wait for element with xpath "//p[contains(text(),'AnnaV Unique appointment theme 1')]" to be present
    Then element with xpath "//p[contains(text(),'AnnaV Unique appointment theme 1')]" should contain text "AnnaV Unique appointment theme 1"
    Then I wait for element with xpath "//p[contains(text(),'AnnaV Unique appointment theme 1 ')]//ancestor::article/div[2]/span[contains(text(),'update')]" to be present
    And I click on element with xpath "//p[contains(text(),'AnnaV Unique appointment theme 1 ')]//ancestor::article/div[2]/span[contains(text(),'update')]"
      #confirmation window pop up
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present
    And element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text "Are you sure you want to cancel appointment?"
      #cancel the appointment
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    And I wait for 1 sec
      #verification of appointment cancellation
    And element with xpath "//p[contains(text(),'AnnaV Unique appointment theme 1')]" should not be present

