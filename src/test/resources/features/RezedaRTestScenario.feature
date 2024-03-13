Feature: Login to Medical Center
  
  Scenario: Login as Administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element using JavaScript with xpath "(//button[contains(text(),'Login']"
    git
