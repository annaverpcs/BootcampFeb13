# Author: Tatiana Kulik

@medicenter
Feature:Login to Medical Center

  Scenario: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    #login page
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    #home page
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath "//h1[contains(text(),'Calvin Grant')]" to be present
    And element with xpath "//h1[contains(text(),'Calvin Grant')]" should be present
    And element with xpath "//h1[contains(text(),'Calvin Grant')]" should contain text "Calvin Grant"
    #logout
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And I wait for 5 sec