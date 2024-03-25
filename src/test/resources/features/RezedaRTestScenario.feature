#Author: Rezeda Ryzhkov
#FEB-125 manual test cases
  # This test scenarios are for adding appointment as administrator

Feature: Add Appointment as Administrator
  
  Scenario: Appointment creation with valid data set
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
    Then I wait for 3 sec
        Then I click on element with xpath "//button[contains(text(), 'Appointments')]"
        #Appointment page
        Then I wait for element with xpath "//body/div[@id='__next']/main[1]/div[1]/div[3]/button[1]" to be present
        Then I click on element with xpath "//body/div[@id='__next']/main[1]/div[1]/div[3]/button[1]"
        #New appointment form
        Then I wait for element with xpath "//span[contains(text(),'New appointment')]" to be present
        Then I type "Rezeda Test" into element with xpath "//input[@id='user_name']"
        Then I type "headache" into element with xpath "//textarea[@id='note']"
        And I click on element with xpath "//select[@name='employee_id']/option"
        And I click on element with xpath "//select//option[contains(text(),'Kim')]"
        And I type "03/26/2024" into element with xpath "//input[@id='date']"
        And I wait for 3 sec
        And I click on element with xpath "//button[contains(text(),'08:00 AM')]"
        And I click on element with xpath "//button[contains(text(),'Save')]"
        Then I wait for 3 sec
        And element with xpath "//button[contains(text(),'Save')]" should not be present
  #verify that the appointment is created and is in the table of appointments
    Then I wait for element with xpath "//div[contains(text(),'Rezeda Test')]" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//div[contains(text(),'Rezeda Test')]"
    Then I wait for element with xpath "//span[contains(text(), 'Appointment summary')]" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(), 'Cancel appointment')]"
    Then I wait for 3 sec
    And element with xpath "//button[contains(text(),'Save')]" should not be present
    And element with xpath "//div[contains(text(),'Rezeda Test')]" should not be present
    Then I wait for 3 sec

   Scenario: Validation of Required Fields of New Appointment form
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
     Then I wait for 3 sec
     Then I click on element with xpath "//button[contains(text(), 'Appointments')]"
        #Appointment page
     Then I wait for element with xpath "//body/div[@id='__next']/main[1]/div[1]/div[3]/button[1]" to be present
     Then I click on element with xpath "//body/div[@id='__next']/main[1]/div[1]/div[3]/button[1]"
        #New appointment form
     Then I wait for element with xpath "//span[contains(text(),'New appointment')]" to be present
     Then I type "ear pain" into element with xpath "//textarea[@id='note']"
     And I click on element with xpath "//select[@name='employee_id']/option"
     And I click on element with xpath "//select//option[contains(text(),'Kim')]"
     And I type "03/26/2024" into element with xpath "//input[@id='date']"
     And I wait for 3 sec
     And I click on element with xpath "//button[contains(text(),'09:00 AM')]"
     And I click on element with xpath "//button[contains(text(),'Save')]"
     And element with xpath "//button[contains(text(),'Save')]" should be present
     Then I wait for 3 sec


Scenario: Appointment with Past Date
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
  Then I wait for 3 sec
  Then I click on element with xpath "//button[contains(text(), 'Appointments')]"
        #Appointment page
  Then I wait for element with xpath "//body/div[@id='__next']/main[1]/div[1]/div[3]/button[1]" to be present
  Then I click on element with xpath "//body/div[@id='__next']/main[1]/div[1]/div[3]/button[1]"
        #New appointment form
  Then I wait for element with xpath "//span[contains(text(),'New appointment')]" to be present
  Then I type "Sara Jones" into element with xpath "//input[@id='user_name']"
  Then I type "ear pain" into element with xpath "//textarea[@id='note']"
  And I click on element with xpath "//select[@name='employee_id']/option"
  And I click on element with xpath "//select//option[contains(text(),'Kim')]"
  And I type "02/27/2024" into element with xpath "//input[@id='date']"
  And I wait for 3 sec
  And I click on element with xpath "//button[contains(text(),'08:00 AM')]"
  And I click on element with xpath "//button[contains(text(),'Save')]"
  And element with xpath "//button[contains(text(),'Save')]" should be present
  Then I wait for 3 sec




