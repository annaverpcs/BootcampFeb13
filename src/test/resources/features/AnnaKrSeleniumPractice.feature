Feature: Medical center Test Scenario with Selenium WebDriver method
  Scenario: Login with Selenium WebDriver method
    When AnnaKr launch "https://medicenter-qa2.vercel.app/"
    Then AnnaKr click on "Login" button
    Then I wait for 5 sec
    Then AnnaKr type "patient1@gmail.com" to "Email" field
    Then AnnaKr type "abc123" to "Password" field
    Then AnnaKr click on "Sign in" button
    And AnnaKr page title is "Medical Center"
    Then I wait for 3 sec
    









