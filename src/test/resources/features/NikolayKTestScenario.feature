#Author: Nikolay Komarov
  # FEB-52 - manual test cases (User stoty #3)

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
      Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
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
      And I type "0800" into element with xpath "//input[@id='working_hours.thursday.from']"
      And I click on element with xpath "//input[@id='working_hours.thursday.to']"
      And I type "1800" into element with xpath "//input[@id='working_hours.thursday.to']"
      Then I click on element with xpath "//button[@id='friday']"
      And I click on element with xpath "//input[@id='working_hours.friday.from']"
      And I type "0800" into element with xpath "//input[@id='working_hours.friday.from']"
      And I click on element with xpath "//input[@id='working_hours.friday.to']"
      And I type "1800" into element with xpath "//input[@id='working_hours.friday.to']"
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


        # FEB-52 - manual test cases (User stoty #8)

    Scenario: Delete appointment as a patient
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
      And I wait for 1 sec
      And I click on element with xpath "//span[contains(text(),'update')]"
      And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
      And I wait for 1 sec
      And element with xpath "//button[contains(text(),'Cancel appointment')]" should not be present


      # FEB-52 - manual test cases (User stoty #3)
    Scenario: Add new specialist with no input in "First name" text field
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
      And I wait for element with xpath "//span[contains(text(),'New specialist')]" to be present

      # FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with minimum limit input in "First name" text field
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
      And I type "A" into element with xpath "//input[@id='first_name']"
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
      Then I wait for element with xpath "//td[contains(text(),'A Dear1000')]" to be present
      #Delete new specialist
      Then I mouse over element with xpath "//td[text()='A Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      Then I click on element with xpath "//td[text()='A Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And I wait for 2 sec
      And element with xpath "//td[contains(text(),'A Dear1000')]" should not be present

      # FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with maximum limit input in "First name" text field
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
      And I type "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett" into element with xpath "//input[@id='first_name']"
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
      Then I wait for element with xpath "//td[contains(text(),'hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear1000')]" to be present
      #Delete new specialist
      Then I mouse over element with xpath "//td[text()='hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      Then I click on element with xpath "//td[text()='hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And I wait for 2 sec
      And element with xpath "//td[contains(text(),'hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear1000')]" should not be present


      # FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with more than allowed input in "First name" text field
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
      And I type "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthfhtrhtrhnmmseeett" into element with xpath "//input[@id='first_name']"
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
      And I wait for element with xpath "//td[contains(text(),'hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthfhtrhtrhnmmseeett Dear1000')]" to not be present


      # FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with less than 1 hour working schedule
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
      And I type "0845" into element with xpath "//input[@id='working_hours.monday.to']"
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
      And I wait for element with xpath "//td[contains(text(),'Don Dear1000')]" to not be present

# FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with no input in working schedule
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
      And I wait for element with xpath "//td[contains(text(),'Don Dear1000')]" to not be present

      # FEB-52 - manual test cases (User stoty #3)
    Scenario: Add new specialist with no input in "Last name" text field
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
      And I wait for element with xpath "//span[contains(text(),'New specialist')]" to be present
      And I wait for 1 sec


      # FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with minimum limit input in "Last name" text field
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
      And I type "0" into element with xpath "//input[@id='last_name']"
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
      Then I wait for element with xpath "//td[contains(text(),'Don 0')]" to be present
      #Delete new specialist
      Then I mouse over element with xpath "//td[text()='Don 0']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      Then I click on element with xpath "//td[text()='Don 0']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And I wait for 2 sec
      And element with xpath "//td[contains(text(),'Don 0')]" should not be present


      # FEB-52 - manual test cases (User stoty #3)
    Scenario:Add new specialist with minimum limit input in "Last name" text field
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
      And I type "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett" into element with xpath "//input[@id='last_name']"
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
      Then I wait for element with xpath "//td[contains(text(),'Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett')]" to be present
      #Delete new specialist
      Then I mouse over element with xpath "//td[text()='Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      Then I click on element with xpath "//td[text()='Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett']/following-sibling::td/div/span/span[contains(text(),'delete')]"
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And I wait for 3 sec
      And element with xpath "//td[contains(text(),'Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett')]" should not be present



    Scenario: Delete Don 0
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
      #Verify the need specialist is present
        And I wait for 1 sec
        Then I wait for element with xpath "//td[contains(text(),'Don 0')]" to be present
      #Delete new specialist
        Then I mouse over element with xpath "//td[text()='Don 0']/following-sibling::td/div/span/span[contains(text(),'delete')]"
        Then I click on element with xpath "//td[text()='Don 0']/following-sibling::td/div/span/span[contains(text(),'delete')]"
        And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
        And I wait for 2 sec
        And element with xpath "//td[contains(text(),'Don Dear1000')]" should not be present


      #data driven scenario
    Scenario Outline: Add new specialist as administrator data driven scenario
      Given I open url "https://medicenter-qa2.vercel.app/"
      And I click on element with xpath <LoginButton>
      And I wait for element with xpath <EmailText> to be present
      And I type <Email> into element with xpath <InputEmailXPath>
      Then I type <Password> into element with xpath <InputPassword>
      Then I click on element with xpath <SingInButton>
      And I wait for element with xpath <MedicalCenter> to be present
      Then I wait for element with xpath <XpathLoggedInAsAdmin> to be present
      And element with xpath <XpathLoggedInAsAdmin> should be present
      And element with xpath <XpathLoggedInAsAdmin> should contain text <FullNameAdmin>


      When I wait for <1sec> sec
      And I click on element with xpath "//button[contains(text(),'Add specialist')]"
      And I type <NewSpecialistFirstName> into element with xpath "//input[@id='first_name']"
      And I type <NewSpecialistLastName> into element with xpath "//input[@id='last_name']"
      And I click on element with xpath "//select[@name='role']"
      And I wait for element with xpath <role> to be present
      And I click on element with xpath <role>
      And I wait for <1sec> sec
      And element with xpath "//label[@for='workingDays']" should contain text "Working hours"
      Then I click on element with xpath "//button[@id='monday']"
      And I click on element with xpath <HoursMondayFrom>
      And I type <0800> into element with xpath <HoursMondayFrom>
      And I click on element with xpath <HoursMondayTo>
      And I type <1800> into element with xpath <HoursMondayTo>
      Then I click on element with xpath "//button[@id='tuesday']"
      And I click on element with xpath <HoursTuesdayFrom>
      And I type <0800> into element with xpath <HoursTuesdayFrom>
      And I click on element with xpath <HoursTuesdayTo>
      And I type <1800> into element with xpath <HoursTuesdayTo>
      Then I click on element with xpath "//button[@id='wednesday']"
      And I click on element with xpath <HoursWednesdayFrom>
      And I type <0800> into element with xpath <HoursWednesdayFrom>
      And I click on element with xpath <HoursWednesdayTo>
      And I type <1800> into element with xpath <HoursWednesdayTo>
      Then I click on element with xpath "//button[@id='thursday']"
      And I click on element with xpath <HoursThursdayFrom>
      And I type <0800> into element with xpath <HoursThursdayFrom>
      And I click on element with xpath <HoursThursdayTo>
      And I type <1800> into element with xpath <HoursThursdayTo>
      Then I click on element with xpath "//button[@id='friday']"
      And I click on element with xpath <HoursFridayFrom>
      And I type <0800> into element with xpath <HoursFridayFrom>
      And I click on element with xpath <HoursFridayTo>
      And I type <1800> into element with xpath <HoursFridayTo>
      Then element with xpath <SaveButton> should be present
      And I click on element with xpath <SaveButton>
      And I click on element with xpath "//button[contains(text(),'Logout')]"
      And I wait for element with xpath <LoginButton> to be present
      And I click on element with xpath <LoginButton>
      And I type <Email> into element with xpath <InputEmailXPath>
      Then I type <Password> into element with xpath <InputPassword>
      Then I click on element with xpath <SingInButton>
      And I wait for element with xpath <MedicalCenter> to be present
      Then I wait for element with xpath <XpathLoggedInAsAdmin> to be present
      And element with xpath <XpathLoggedInAsAdmin> should be present
      And element with xpath <XpathLoggedInAsAdmin> should contain text <FullNameAdmin>
      And I wait for <1sec> sec
      Then I wait for element with xpath <NewSpecialistFullName> to be present
      Then I mouse over element with xpath <DeleteIcon>
      Then I click on element with xpath <DeleteIcon>
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      And I wait for <1sec> sec
      And element with xpath <NewSpecialistFullName> should not be present
      Examples:
       |            MedicalCenter                | EmailText                                   |       InputEmailXPath| InputPassword           |Email                       |LoginButton                         | Password | SingInButton                           |XpathLoggedInAsAdmin                   | FullNameAdmin  | 1sec|NewSpecialistFirstName|NewSpecialistLastName| role                                 | HoursMondayFrom                            | 0800   | HoursMondayTo                            | 1800  | HoursTuesdayFrom                            | HoursTuesdayTo                            | HoursWednesdayFrom                            | HoursWednesdayTo                            | HoursThursdayFrom                           | HoursThursdayTo                           | HoursFridayFrom                          | HoursFridayTo                              | SaveButton                          | NewSpecialistFullName                       |                           DeleteIcon                                                             |
       |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator1@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Mary Poppins')]"| "Mary Poppins" | 1   | "Don"                | "Dear1000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Don Dear1000')]"     | "//td[text()='Don Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"     |
       #2Log in as administrator with different credential
       |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "Donovan"            | "Dear2000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Donovan Dear2000')]" | "//td[text()='Donovan Dear2000']/following-sibling::td/div/span/span[contains(text(),'delete')]" |
       #3Add new specialist with minimum limit input in "First name" text field
       |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "A"                  | "Dear2000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'A Dear2000')]"       | "//td[text()='A Dear2000']/following-sibling::td/div/span/span[contains(text(),'delete')]"       |
       #4Add new specialist with maximum limit input in "First name" text field
       |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett"                  | "Dear2000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear2000')]"       | "//td[text()='hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear2000']/following-sibling::td/div/span/span[contains(text(),'delete')]"       |
       #5Add new specialist with minimum limit input in "Last name" text field
       |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "Don"                | "0"                 | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Don 0')]"              | "//td[text()='Don 0']/following-sibling::td/div/span/span[contains(text(),'delete')]"              |
       #6Add new specialist with maximum limit input in "Last name" text field
       |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "Don"                | "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett')]"       | "//td[text()='Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett']/following-sibling::td/div/span/span[contains(text(),'delete')]"       |






