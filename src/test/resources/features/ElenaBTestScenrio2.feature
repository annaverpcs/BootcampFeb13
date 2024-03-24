#Author:Elena Busurkina
   #Feb-218 -manual test cases

Feature: Make an appointment
#login as a patient
Given I open url "https://medicenter-qa2.vercel.app/"
Then I click on element with xpath "//button[contains(text(),'Login')]"
Then I wait for element with xpath "//a[text()='Back to home']" to be present
Then I type "patient2@gmail.com" into element with xpath "//input[@placeholder='Your email address']"
Then I type "abc123" into element with xpath "//input[@placeholder='Your password']"
Then I click on element with xpath "//button[@type='submit']"
Then I wait for element with xpath "//a[text()='My appointments']" to be present
And element with xpath "//h1[@class='font-medium text-xl']" should be present