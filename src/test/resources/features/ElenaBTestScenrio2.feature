#Author:Elena Busurkina
   #Feb-218 -manual test cases

Feature: Make an appointment as a patient
#login as a patient
  Scenario: Make an appointment and delete
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[text()='Back to home']" to be present
    Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
    Then I type "abc123" into element with xpath "//input[@placeholder='Your password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//a[text()='My appointments']" to be present
    And element with xpath "//h1[@class='font-medium text-xl']" should be present
    #make an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//select[@name='employee_id']" to be present
    Then I type "strong pain in the feet" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 2 sec
    Then I click on element with xpath "//option[@value='314f574a-8b88-4927-818a-55e375e7d874']"
    And I wait for 1 sec
    Then I type "05042024" into element with xpath "//input[@type='date']"
    Then I click on element with xpath "//button[contains(text(),'08:15 AM')]"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'strong pain in the feet')]" to be present
    And element with xpath "//p[contains(text(),'strong pain in the feet')]" should contain text "strong pain in the feet"
    And element with xpath "//p[contains(text(),'strong pain in the feet')]/parent::div/parent::div/following-sibling::div" should be present
    Then I click on element with xpath "//p[contains(text(),'strong pain in the feet')]/parent::div/parent::div/following-sibling::div"
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    And I wait for 3 sec
    And element with xpath "//p[contains(text(),'strong pain in the feet')]" should not be present

  Scenario: Make an appointment and close the window
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[text()='Back to home']" to be present
    Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
    Then I type "abc123" into element with xpath "//input[@placeholder='Your password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//a[text()='My appointments']" to be present
    And element with xpath "//h1[@class='font-medium text-xl']" should be present
    #make an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//select[@name='employee_id']" to be present
    Then I type "strong pain in the feet" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 2 sec
    Then I click on element with xpath "//option[@value='314f574a-8b88-4927-818a-55e375e7d874']"
    And I wait for 1 sec
    Then I type "03202024" into element with xpath "//input[@type='date']"
    Then I click on element with xpath "//button[contains(text(),'08:15 AM')]"
    Then I click on element with xpath "//button/span[contains(text(),'close')]"
    And I wait for element with xpath "//h2[contains(text(),'Your appointments')]" to be present
    And I wait for 3 sec

  Scenario: Close the window "Cancel appointment"
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[text()='Back to home']" to be present
    Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
    Then I type "abc123" into element with xpath "//input[@placeholder='Your password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//a[text()='My appointments']" to be present
    And element with xpath "//h1[@class='font-medium text-xl']" should be present
    #make an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//select[@name='employee_id']" to be present
    Then I type "strong pain in the feet" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    And I wait for 2 sec
    Then I click on element with xpath "//option[@value='314f574a-8b88-4927-818a-55e375e7d874']"
    And I wait for 1 sec
    Then I type "05042024" into element with xpath "//input[@type='date']"
    Then I click on element with xpath "//button[contains(text(),'08:15 AM')]"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'strong pain in the feet')]" to be present
    And element with xpath "//p[contains(text(),'strong pain in the feet')]" should contain text "strong pain in the feet"
    And element with xpath "//p[contains(text(),'strong pain in the feet')]/parent::div/parent::div/following-sibling::div" should be present
    Then I click on element with xpath "//p[contains(text(),'strong pain in the feet')]/parent::div/parent::div/following-sibling::div"
    Then I click on element with xpath "//button/span[contains(text(),'close')]"
    And I wait for element with xpath "//p[contains(text(),'strong pain in the feet')]" to be present
    And I wait for 3 sec