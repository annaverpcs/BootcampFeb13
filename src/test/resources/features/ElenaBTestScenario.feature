#Author:Elena Busurkina
  #Feb-218 -manual test cases

Feature: Login to Medical Center

  Scenario: Login as Patient and logout
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[text()='Back to home']" to be present
    Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
    Then I type "abc123" into element with xpath "//input[@placeholder='Your password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//a[text()='My appointments']" to be present
    And element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present

    Scenario: Login with invalid email
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then I wait for element with xpath "//a[text()='Back to home']" to be present
      Then I type "patient2@gmail.con" into element with xpath "//input[@placeholder='Your email address']"
      Then I type "abc123" into element with xpath "//input[@placeholder='Your password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present
      And  I wait for 3 sec

Scenario: Login with invalid password
  Given I open url "https://medicenter-qa2.vercel.app/"
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  Then I wait for element with xpath "//a[text()='Back to home']" to be present
  Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
  Then I type "abc1234" into element with xpath "//input[@placeholder='Your password']"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present
  And  I wait for 3 sec

  Scenario: Login with empty email field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[text()='Back to home']" to be present
    Then I type "abc1234" into element with xpath "//input[@placeholder='Your password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present
    And  I wait for 3 sec

    Scenario: Login with empty password field
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then I wait for element with xpath "//a[text()='Back to home']" to be present
      Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present
      And  I wait for 3 sec
