#Author: Nikolay Komarov
  # FEB-52 - manual test cases

  Feature:

    Scenario:Add new specialist as administrator
      Given I open url "https://medicenter-qa2.vercel.app/"
      And I click on element with xpath "//button[contains(text(),'Login')]"
      #login page
      And I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      And I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//button[contains(text(),'Sign in')]"
      #home page
      And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
      #add new specialist
      When I wait for 1 sec
      And I click on element with xpath "//button[contains(text(),'Add specialist')]"
      And I type "Don" into element with xpath "//input[@id='first_name']"
      And I type "Dear1000" into element with xpath "//input[@id='last_name']"
      And I click on element with xpath "//select[@name='role']"
      And I wait for element with xpath "//option[contains(text(),'Doctor')]" to be present
      And I click on element with xpath "//option[contains(text(),'Doctor')]"
      And I wait for 1 sec
      And element with xpath "//label[@for='workingDays']" should contain text "Working hours"
      Then I click on element with xpath "//button[@id='monday']"
      And I click on element with xpath "//input[@id='working_hours.monday.from']"
      And I type "0800" into element with xpath "//input[@id='working_hours.monday.from']"
      And I click on element with xpath "//input[@id='working_hours.monday.to']"
      And I type "1800" into element with xpath "//input[@id='working_hours.monday.to']"
      Then I click on element with xpath "//button[@id='tuesday']"
      And I click on element with xpath "//input[@id='working_hours.tuesday.from']"
      And I type "0800" into element with xpath "//input[@id='working_hours.tuesday.from']"
      And I click on element with xpath "//input[@id='working_hours.tuesday.to']"
      And I type "1800" into element with xpath "//input[@id='working_hours.tuesday.to']"
      Then I click on element with xpath "//button[@id='wednesday']"
      And I click on element with xpath "//input[@id='working_hours.wednesday.from']"
      And I type "0800" into element with xpath "//input[@id='working_hours.wednesday.from']"
      And I click on element with xpath "//input[@id='working_hours.wednesday.to']"
      And I type "1800" into element with xpath "//input[@id='working_hours.wednesday.to']"
      Then I click on element with xpath "//button[@id='thursday']"
      And I click on element with xpath "//input[@id='working_hours.thursday.from']"
      And I type "08:00" into element with xpath "//input[@id='working_hours.thursday.from']"
      And I click on element with xpath "//input[@id='working_hours.thursday.to']"
      And I type "18:00" into element with xpath "//input[@id='working_hours.thursday.to']"
      Then I click on element with xpath "//button[@id='friday']"
      And I click on element with xpath "//input[@id='working_hours.friday.from']"
      And I type "08:00" into element with xpath "//input[@id='working_hours.friday.from']"
      And I click on element with xpath "//input[@id='working_hours.friday.to']"
      And I type "18:00" into element with xpath "//input[@id='working_hours.friday.to']"
      Then element with xpath "//button[contains(text(),'Save')]" should be present
      And I click on element with xpath "//button[contains(text(),'Save')]"
      #Need to update page. Go to logout and than login again
      And I click on element with xpath "//button[contains(text(),'Logout')]"
      And I wait for element with xpath "//button[contains(text(),'Login')]" to be present
      And I click on element with xpath "//button[contains(text(),'Login')]"
      #login page
      And I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      And I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//button[contains(text(),'Sign in')]"
      #home page
      And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
      And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
      #Verify new specialist created
      And I wait for 1 sec
      Then I wait for element with xpath "//td[contains(text(),'Don Dear1000')]" to be present
      #Delete new specialist
      Then I mouse over element with xpath "//td[text()='Don Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      Then I click on element with xpath "//td[text()='Don Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And I wait for 2 sec
      And element with xpath "//td[contains(text(),'Don Dear1000')]" should not be present




