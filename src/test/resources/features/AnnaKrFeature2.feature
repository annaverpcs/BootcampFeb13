#Author: Anna Krylova
  #FEB-42 - manual test cases
   # As an administrator, I can edit a specialist data
  # As an administrator, I can review an appointment in Calendar

  Feature: Appointment related test scenarios
      #prerequisites for test scenarios
    Background:
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present

    Scenario: Make an appointment and delete an appointment
      #Given I open url "https://medicenter-qa2.vercel.app/"
      #Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
      #Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
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
      And I type "AnnaKr Unique appointment theme 1 " into element with xpath "//textarea[@id='note']"
      Then I click on element with xpath "//select[@name='employee_id']"
      And I wait for 3 sec
      Then I click on element with xpath "//select[@name='employee_id']/..//option[5]"
      And I type "03/27/2024" into element with xpath "//input[@id='date']"
      And I wait for 3 sec
      And I click on element with xpath "//button[contains(text(),'03:00 PM')]"
      And I click on element with xpath "//button[contains(text(),'Save')]"
      #verify that the appointment is created and is in the list of appointments
      Then I wait for element with xpath "//p[contains(text(),'AnnaKr Unique appointment theme 1')]" to be present
      Then element with xpath "//p[contains(text(),'AnnaKr Unique appointment theme 1')]" should contain text "AnnaKr Unique appointment theme 1"
      Then I wait for element with xpath "//p[contains(text(),'AnnaKr Unique appointment theme 1 ')]//ancestor::article/div[2]/span[contains(text(),'update')]" to be present
      And I click on element with xpath "//p[contains(text(),'AnnaKr Unique appointment theme 1 ')]//ancestor::article/div[2]/span[contains(text(),'update')]"
      #confirmation window pop up
      Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present
      #And element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text "Are you sure you want to cancel appointment?"
      #cancel the appointment
      Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
      And I wait for 5 sec
      #verification of appointment cancellation
      #And element with xpath "//p[contains(text(),'AnnaKr Unique appointment theme 1')]" should not be present

    Scenario: As administrator, I can select Edit Specialist info from Specialists List
      #Given I open url "https://medicenter-qa2.vercel.app/"
    #Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
    #Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"
      #home page
      Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
      Then I wait for 5 sec
    #Make sure that administrator has "edit" button at specialist
      Then I wait for element with xpath "//button[contains(text(),'Specialists')]" to be present
      Then I click on element with xpath "//button[contains(text(),'Specialists')]"
      Then I wait for 5 sec
      Then I wait for element with xpath "//span[@id=':r166:']" to be present
      Then I click on element with xpath "//span[@id=':r166:']"
      Then I wait for 5 sec
    #pop up window Edit Specialist info are correctly displayed

    Scenario: As administrator, I can delete Specialist from Specialists List
            #Given I open url "https://medicenter-qa2.vercel.app/"
    #Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
    #Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"
      #home page
      Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
      Then I wait for 5 sec
    #Make sure that administrator has "delete" button at specialists
      Then I wait for element with xpath "//button[contains(text(),'Specialists')]" to be present
      Then I click on element with xpath "//td[contains(text(),'Dva')]"
      Then I click on element with xpath "//span[@id=':r17e:']"
      Then I wait for 3 sec
      #Make sure that popup window "Removing specialist" is present
      Then I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      Then I wait for element with xpath "//*[contains(text(),'Odin Dva')]" to not be present
      Then I wait for 3 sec