#Author: Aleksei Shakh
@medicenter
Feature: Login as administrator
#prerequisits
  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present

#data driven scenario
  Scenario Outline: Log in as administrator
    Then I type <Email address> into element with xpath "//input[@id='email']"
    Then I type <Password> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath <xpathLoggedAdmin> to be present
    And element with xpath <xpathLoggedAdmin> should be present
    And element with xpath <xpathLoggedAdmin> should contain text <Full name>
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for <sec> sec
    Examples:
        | Email address               | Password     | xpathLoggedAdmin                        | Full name      | sec |
        | "administrator1@gmail.com"  | "abc123"     | "//h1[contains(text(),'Mary Poppins')]" | "Mary Poppins" | 3   |
        | "administrator2@gmail.com"  | "abc123"     | "//h1[contains(text(),'Calvin Grant')]" | "Calvin Grant" | 3   |