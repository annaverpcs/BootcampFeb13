#Author: Oleksandr Mytrokhin
# based on FEB-497
<<<<<<< HEAD
=======
@medicenter
>>>>>>> main
Feature:Login to Medical Center

  Scenario: Login as Patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
      #login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "jazzhands@repeatxdu.com" into element with xpath "//input[@id='email']"
    Then I type "123123Aa" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
      #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Alex Man')]" to be present
    And element with xpath "//h1[contains(text(),'Alex Man')]" should be present
    And element with xpath "//h1[contains(text(),'Alex Man')]" should contain text "Alex Man"
      #create new appointment
    When I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
      #fill out appointment details
    And I type "OleksMyt test FEB-497" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 3 sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[7]"
    And I type "26/03/2024" into element with xpath "//input[@id='date']"
    And I wait for 3 sec
    And I click on element with xpath "//button[contains(text(),'08:00 AM')]"
    And I click on element with xpath "//button[contains(text(),'Save')]"
      #verify that the appointment is created and is in the list of appointments
    Then I wait for element with xpath "//p[contains(text(),'OleksMyt test FEB-497')]" to be present
    Then element with xpath "//p[contains(text(),'OleksMyt test FEB-497')]" should contain text "OleksMyt test FEB-497"
    Then I wait for element with xpath "//p[contains(text(),'OleksMyt test FEB-497')]//ancestor::article/div[2]/span[contains(text(),'update')]" to be present
    And I click on element with xpath "//p[contains(text(),'OleksMyt test FEB-497')]//ancestor::article/div[2]/span[contains(text(),'update')]"
      #confirmation window pop up
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present
    And element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text "Are you sure you want to cancel appointment?"
      #cancel the appointment
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    And I wait for 3 sec
      #verification of appointment cancellation
    And element with xpath "//p[contains(text(),'OleksMyt test FEB-497')]" should not be present
