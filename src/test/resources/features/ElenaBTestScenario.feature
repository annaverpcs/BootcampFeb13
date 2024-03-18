Feature:Login to Medical Center
  Scenario: Login as Patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    And I wait for 3 sec
