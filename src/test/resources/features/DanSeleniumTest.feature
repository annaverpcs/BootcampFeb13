@medicenter
Feature: Medicenter Testing Scenarios Selenium WebDriver methods

  Background:
    When Dan open url  "https://medicenter-qa2.vercel.app/"
    Then Dan click "Login" button

  Scenario: LogIn Selenium WebDriver methods

    Then I type "patient2@gmail.com" to "email" field
    Then I type "abc123" to "password" field
    Then Dan click "Sign In" button
    Then I wait for 3 sec
    And Dan confirming  text "Ben Simpson" displayed on page


#FEB-267
  Scenario: As an administrator I can add new specialist
    Then I type "administrator2@gmail.com" to "email" field
    Then I type "abc123" to "password" field
    Then Dan click "Sign In" button
    And wait for 2 sec
    And Dan confirming  text "Calvin Grant" displayed on page
    Then Dan click "Add specialist" button
    And wait for 1 sec
    And Dan confirming  text "New specialist" displayed on page
    Then I type "FirstnameSelenium" to "First name" field
    Then I type "LastNameSelenium" to "Last name" field
      # pick specialist from list
    Then Dan click "Specialist" button
    Then Dan click "Monday" button
    Then I type "0800" to "working_hours.monday.from" field
    Then I type "1600" to "working_hours.monday.to" field
    Then Dan click "Save" button
    And wait for 1 sec
    And Dan refresh current page
    And wait for 2 sec
    And Dan confirming  text "FirstnameSelenium LastNameSelenium" displayed on page
    And Dan click "Delete" button
    And Dan confirming  text "Are you sure you want to remove this specialist?" displayed on page
    And Dan click "Remove specialist" button
    And wait for 2 sec
    Then Dan confirming  text "FirstnameSelenium LastNameSelenium" is not displayed on page

