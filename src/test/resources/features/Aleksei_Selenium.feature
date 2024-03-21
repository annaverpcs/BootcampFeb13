#Author: Aleksei Shakh

Feature: Login as administrator

  Scenario: Creating Selenium definitions
    Given AlekseiSh launch "https://medicenter-qa2.vercel.app/"
    Then AlekseiSh click on "Login" button
    Then AlekseiSh type "administrator1@gmail.com" to "Email" field
    Then AlekseiSh type "abc123" to "Password" field
    Then AlekseiSh click on "Sign in" button
    Then AlekseiSh page title is "Medical Center"
    Then I wait for 5 sec
    #Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    #Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    #And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    #And element with xpath "//h1[contains(text(),'Mary Poppins')]" should contain text "Mary Poppins"
    #Then I click on element with xpath "//span[contains(text(),'logout')]"
    #And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    #Then I wait for 3 sec
