#Author: Nikolay Komarov
  # FEB-52 - manual test cases (User stoty #3)
@medicenter
Feature: Login as administrator and add new specialist


  # data-driven scenario positive testing
  Scenario Outline: Add new specialist as administrator data driven scenario
 Given I open url "https://medicenter-qa2.vercel.app/"
 And I click on element with xpath <LoginButton>
 And I wait for element with xpath <EmailText> to be present
 And I type <Email> into element with xpath <InputEmailXPath>
 Then I type <Password> into element with xpath <InputPassword>
 Then I click on element with xpath <SingInButton>
 And I wait for element with xpath <MedicalCenter> to be present
 Then I wait for element with xpath <XpathLoggedInAsAdmin> to be present
 And element with xpath <XpathLoggedInAsAdmin> should be present
 And element with xpath <XpathLoggedInAsAdmin> should contain text <FullNameAdmin>


 When I wait for <1sec> sec
 And I click on element with xpath "//button[contains(text(),'Add specialist')]"
 And I type <NewSpecialistFirstName> into element with xpath "//input[@id='first_name']"
 And I type <NewSpecialistLastName> into element with xpath "//input[@id='last_name']"
 And I click on element with xpath "//select[@name='role']"
 And I wait for element with xpath <role> to be present
 And I click on element with xpath <role>
 And I wait for <1sec> sec
 And element with xpath "//label[@for='workingDays']" should contain text "Working hours"
 Then I click on element with xpath "//button[@id='monday']"
 And I click on element with xpath <HoursMondayFrom>
 And I type <0800> into element with xpath <HoursMondayFrom>
 And I click on element with xpath <HoursMondayTo>
 And I type <1800> into element with xpath <HoursMondayTo>
 Then I click on element with xpath "//button[@id='tuesday']"
 And I click on element with xpath <HoursTuesdayFrom>
 And I type <0800> into element with xpath <HoursTuesdayFrom>
 And I click on element with xpath <HoursTuesdayTo>
 And I type <1800> into element with xpath <HoursTuesdayTo>
 Then I click on element with xpath "//button[@id='wednesday']"
 And I click on element with xpath <HoursWednesdayFrom>
 And I type <0800> into element with xpath <HoursWednesdayFrom>
 And I click on element with xpath <HoursWednesdayTo>
 And I type <1800> into element with xpath <HoursWednesdayTo>
 Then I click on element with xpath "//button[@id='thursday']"
 And I click on element with xpath <HoursThursdayFrom>
 And I type <0800> into element with xpath <HoursThursdayFrom>
 And I click on element with xpath <HoursThursdayTo>
 And I type <1800> into element with xpath <HoursThursdayTo>
 Then I click on element with xpath "//button[@id='friday']"
 And I click on element with xpath <HoursFridayFrom>
 And I type <0800> into element with xpath <HoursFridayFrom>
 And I click on element with xpath <HoursFridayTo>
 And I type <1800> into element with xpath <HoursFridayTo>
 Then element with xpath <SaveButton> should be present
 And I click on element with xpath <SaveButton>
 And I click on element with xpath "//button[contains(text(),'Logout')]"
 And I wait for element with xpath <LoginButton> to be present
 And I click on element with xpath <LoginButton>
 And I type <Email> into element with xpath <InputEmailXPath>
 Then I type <Password> into element with xpath <InputPassword>
 Then I click on element with xpath <SingInButton>
 And I wait for element with xpath <MedicalCenter> to be present
 Then I wait for element with xpath <XpathLoggedInAsAdmin> to be present
 And element with xpath <XpathLoggedInAsAdmin> should be present
 And element with xpath <XpathLoggedInAsAdmin> should contain text <FullNameAdmin>
 And I wait for <1sec> sec
 Then I wait for element with xpath <NewSpecialistFullName> to be present
 Then I mouse over element with xpath <DeleteIcon>
 Then I click on element with xpath <DeleteIcon>
 And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
 And I wait for <1sec> sec
 And element with xpath <NewSpecialistFullName> should not be present
 Examples:
 |            MedicalCenter                | EmailText                                   |       InputEmailXPath| InputPassword           |Email                       |LoginButton                         | Password | SingInButton                           |XpathLoggedInAsAdmin                   | FullNameAdmin  | 1sec|NewSpecialistFirstName|NewSpecialistLastName| role                                 | HoursMondayFrom                            | 0800   | HoursMondayTo                            | 1800  | HoursTuesdayFrom                            | HoursTuesdayTo                            | HoursWednesdayFrom                            | HoursWednesdayTo                            | HoursThursdayFrom                           | HoursThursdayTo                           | HoursFridayFrom                          | HoursFridayTo                              | SaveButton                          | NewSpecialistFullName                       |                           DeleteIcon                                                             |
 |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator1@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Mary Poppins')]"| "Mary Poppins" | 1   | "Don"                | "Dear1000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Don Dear1000')]"     | "//td[text()='Don Dear1000']/following-sibling::td/div/span/span[contains(text(),'delete')]"     |
       #2Log in as administrator with different credential
 |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "Donovan"            | "Dear2000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Donovan Dear2000')]" | "//td[text()='Donovan Dear2000']/following-sibling::td/div/span/span[contains(text(),'delete')]" |
       #3Add new specialist with minimum limit input in "First name" text field
 |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "A"                  | "Dear2000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'A Dear2000')]"       | "//td[text()='A Dear2000']/following-sibling::td/div/span/span[contains(text(),'delete')]"       |
       #4Add new specialist with maximum limit input in "First name" text field
 |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett"                  | "Dear2000"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear2000')]"       | "//td[text()='hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett Dear2000']/following-sibling::td/div/span/span[contains(text(),'delete')]"       |
       #5Add new specialist with minimum limit input in "Last name" text field
 |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "Don"                | "0"                 | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Don 0')]"              | "//td[text()='Don 0']/following-sibling::td/div/span/span[contains(text(),'delete')]"              |
       #6Add new specialist with maximum limit input in "Last name" text field
 |"//h1[contains(text(),'Medical Center')]"| "//label[contains(text(),'Email address')]" |"//input[@id='email']"|"//input[@id='password']"| "administrator2@gmail.com" |"//button[contains(text(),'Login')]"| "abc123" | "//button[contains(text(),'Sign in')]" |"//h1[contains(text(),'Calvin Grant')]"| "Calvin Grant" | 1   | "Don"                | "hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett"          | "//option[contains(text(),'Doctor')]"| "//input[@id='working_hours.monday.from']" |"0800"  | "//input[@id='working_hours.monday.to']" |"1800" | "//input[@id='working_hours.tuesday.from']" | "//input[@id='working_hours.tuesday.to']" | "//input[@id='working_hours.wednesday.from']" | "//input[@id='working_hours.wednesday.to']" | "//input[@id='working_hours.thursday.from']"| "//input[@id='working_hours.thursday.to']"| "//input[@id='working_hours.friday.from']" | "//input[@id='working_hours.friday.to']" | "//button[contains(text(),'Save')]" | "//td[contains(text(),'Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett')]"       | "//td[text()='Don hsh4533rsegsfdg5w65w46yw45ywysyhjjdsAAAAAAgsgfshgsfg342////hhstsrhjytdjdtjd=-hssthhtrhtrhnmmseeett']/following-sibling::td/div/span/span[contains(text(),'delete')]"       |
