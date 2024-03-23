<<<<<<< HEAD
#Author: Vladimir Ni
  #FEB-282 - Manual Test Set


=======
@medicenter
>>>>>>> main
Feature: Login to Medical Center

  Scenario: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"

    #Login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"

    #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    And element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

    #Logout page
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

    Then I wait for 5 sec


  Scenario: Login as Patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"

    #Login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"

    #Home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
    And element with xpath "//h1[contains(text(),'James Johnson')]" should be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

    #Logout page
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And element with xpath "//h1[contains(text(),'Medical Center')]" should contain text "Medical Center"

    Then I wait for 5 sec




    

    
    
    
    

    