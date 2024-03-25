#Author: Nikolay Komarov
  # FEB-52 - manual test cases (User stoty #8)
@medicenter
  Feature: Login as the patient and delete the appointment
    Background:
      Given I open url "https://medicenter-qa2.vercel.app/"
      And I click on element with xpath "//button[contains(text(),'Login')]"
      #login page
      And I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      And I type "donsereda@howeremedyshop.com" into element with xpath "//input[@id='email']"
      Then I type "123abc" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//button[contains(text(),'Sign in')]"
      #home page
      And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      Then I wait for element with xpath "//h1[contains(text(),'Nick Tul')]" to be present
      And element with xpath "//h1[contains(text(),'Nick Tul')]" should be present
      And element with xpath "//h1[contains(text(),'Nick Tul')]" should contain text "Nick Tul"
      And I click on element with xpath "//button[contains(text(),'Make an appointment')]"
      And element with xpath "//span[contains(text(),'Make an appointment')]" should be present
      And I type "Pain in a left leg" into element with xpath "//textarea[@id='note']"
      And I click on element with xpath "//option[contains(text(),'Choose specialist')]"
      And I wait for element with xpath "//option[contains(text(),'Paolaa')]" to be present
      And I click on element with xpath "//option[contains(text(),'Paolaa')]"
      And I click on element with xpath "//input[@id='date']"
      And I type "08302024" into element with xpath "//input[@id='date']"
      And I wait for 1 sec
      And I click on element with xpath "//button[contains(text(),'08:00 AM')]"
      And I click on element with xpath "//button[contains(text(),'Save')]"
      #Delete appointment
      And I wait for 2 sec
      And I mouse over element with xpath "//span[contains(text(),'update')]"
      And I click on element with xpath "//span[contains(text(),'update')]"
      And I wait for 2 sec


    Scenario: Delete appointment as a patient
      And I mouse over element with xpath "//button[contains(text(),'Cancel appointment')]"
      And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
      And element with xpath "//h2[contains(text(),'Your appointments')]" should be present
      And I wait for 2 sec
      Then I wait for element with xpath "//body/div[@id='__next']/div[1]/main[1]/section[1]/div[1]/div[1]" to be present

    Scenario: User can decline cancelation of appointment
      And I wait for element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" to be present
      And I mouse over element with xpath "//span[contains(text(),'close')]"
      And I click on element with xpath "//span[contains(text(),'close')]"
      And I wait for element with xpath "//p[contains(text(),'Paolaa Mancusa')]" to be present
 #Delete appointment
      And I wait for 2 sec
      And I mouse over element with xpath "//span[contains(text(),'update')]"
      And I click on element with xpath "//span[contains(text(),'update')]"
      And I wait for 2 sec
      And I mouse over element with xpath "//button[contains(text(),'Cancel appointment')]"
      And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
      And element with xpath "//h2[contains(text(),'Your appointments')]" should be present
      And I wait for 2 sec
      Then I wait for element with xpath "//body/div[@id='__next']/div[1]/main[1]/section[1]/div[1]/div[1]" to be present

