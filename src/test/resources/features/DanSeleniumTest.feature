@medicenter
  Feature: Medicenter Testing Scenarios Selenium WebDriver methods
Scenario: LogIn Selenium WebDriver methods
    When Dan open url  "https://medicenter-qa2.vercel.app/"



    Scenario: Login as patient
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
    #sign_in page
      Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      Then I type "patient2@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"