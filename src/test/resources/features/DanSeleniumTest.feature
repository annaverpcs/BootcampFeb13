Feature: Data driven Login scenario
  #Data driven scenario
  Scenario Outline: Login as patient data driven scenario
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type <emailAddress> into element with xpath "//input[@id='email']"
    Then I type <Password> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    And I wait for element with xpath <Xpath> to be present
    And element with xpath <Xpath> should contain text <PatientName>
    Examples:
      | emailAddress         | Password | Xpath | PatientName        |
      | "patient2@gmail.com" | "abc123" | "//h1[contains(text(),'Ben Simpson')]"| "Ben Simpson"      |
      | "patient1@gmail.com" | "abc123" | "//h1[contains(text(),'James Johnson')]"|"James Johnson"    |
      | "patient3@gmail.com" | "abc123" | "//h1[contains(text(),'Alice Wonderland')]"| "Alice Wonderland" |