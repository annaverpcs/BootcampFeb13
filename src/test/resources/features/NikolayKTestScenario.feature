#Author: Nikolay Komarov
  # FEB-52 - manual test cases (User stoty #3)
@medicenter
  Feature: test

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








    Scenario: Delete Don Dear1000
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
        Then I wait for element with xpath "//td[contains(text(),'Don Dear1000')]" to be present
      #Delete new specialist
        Then I mouse over element with xpath "//td[text()='Don Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
        Then I click on element with xpath "//td[text()='Don Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"
        And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
        And I wait for 2 sec
        And element with xpath "//td[contains(text(),'Don Dear1000')]" should not be present

