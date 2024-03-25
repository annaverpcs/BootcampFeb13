Feature: Medical Center Test Scenario with Selenium WebDriver methods
  Scenario: Login with Selenium WebDriver method
    When NikolayK launch "https://medicenter-qa2.vercel.app/"
    Then NikolayK click on "Login" button
    Then I wait for 1 sec










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