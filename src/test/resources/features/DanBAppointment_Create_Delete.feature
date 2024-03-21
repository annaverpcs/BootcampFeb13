@medicenter
Feature: Appointment related scenarios
  #Bug found in appointment saved with one date less than typed
  #EX: date selected in this scenario 04/09/2024 but appointment saved as 04/08/2024
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
When I click on element with xpath "//button[text()='Make an appointment']"
  Then I wait for element with xpath "//span[text()='Make an appointment']" to be present
#fill out appointment form
  Then I type "Check up" into element with xpath "//textarea[@id='note']"
Then I click on element with xpath "//select[@name='employee_id']"
And I wait for 2 sec
  Then I click on element with xpath "//select[@name='employee_id']/..//option[contains(text(),'Mihail')]"
  And I wait for 5 sec
And I type "04/09/2024" into element with xpath "//input[@id='date']"
  And I wait for 2 sec
And I click on element with xpath "//button[contains(text(),'10:15 AM')]"
  And I wait for 1 sec
  Then I click on element with xpath "//button[contains(text(),'Save')]"
  #Verify appointment been createdMonday 08 April 2024, 11:30
  Then I wait for element with xpath "//h3[contains(text(),'Monday 08 April 2024, 10:15')]" to be present
  And I click on element with xpath "//h3[contains(text(),'Monday 08 April 2024, 10:15')]/ancestor::article/div[2]/span"
And I wait for 2 sec
  Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
  And I wait for 2 sec
And I wait for element with xpath "//h2[contains(text(),'Your appointments')]" to be present
  And I wait for 2 sec
  Then element with xpath "//h3[contains(text(),'Monday 08 April 2024, 10:15')]" should not be present