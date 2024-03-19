@medicenter
Feature: Medical Center Test Scenarios with Selenium WebDriver methods
  Scenario: Login with Selenium WebDriver methods
      When AnnaV launch "https://medicenter-qa2.vercel.app/"
      Then AnnaV click on "Login" button
      Then AnnaV type "patient1@gmail.com" to "Email" field
      Then AnnaV type "abc123" to "Password" field
      Then AnnaV click on "Sign In" button
      And AnnaV page title is "Medical Center"




