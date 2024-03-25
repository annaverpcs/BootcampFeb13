package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class DanBStepDefs {
    @When("Dan open url  {string}")
    public void danOpenUrl(String appName) {
        getDriver().get(appName);
    }

//_____________________Click buttons
    @Then("Dan click {string} button")
    public void danClickButton(String ButtonName) {

        switch (ButtonName) {

            case "Login":
                getDriver().findElement(By.xpath("//button[contains(text(),'Login')]")).click();
                break;
            case "Sign In":
                getDriver().findElement(By.xpath("//button[contains(text(),'Sign in')]")).click();
                break;
            case "Add specialist":
                getDriver().findElement(By.xpath("//button[contains(text(),'Add specialist')]")).click();
                break;
            case "Specialist":
                getDriver().findElement(By.xpath("//option[@value='doctor']")).click();
                break;
            case "Monday":
                getDriver().findElement(By.xpath("//button[@id='monday']")).click();
                break;
            case "Save":
                getDriver().findElement(By.xpath("//button[contains(text(),'Save')]")).click();
                break;
            case "Delete":
                String deleteSpecialist = "//td[text()='FirstnameSelenium LastNameSelenium']/following-sibling::td/div/span/span[contains(text(),'delete')]";
                getDriver().findElement(By.xpath(deleteSpecialist)).click();
                break;
            case "Remove specialist":
                getDriver().findElement(By.xpath("//button[contains(text(),'Remove specialist')]")).click();
                break;
            default:
                System.out.println("Button '" + ButtonName + "' not found");

        }
    }



//__________________Field input
    @Then("I type {string} to {string} field")
    public void iTypeToField(String value, String TextFieldName) {
String fieldXpath="";

        switch (TextFieldName) {
            case "email" -> fieldXpath="//input[@id='email']";
            case "password" ->fieldXpath = "//input[@id='password']";
            case "First name" -> fieldXpath = "//input[@id='first_name']";
            case "Last name" -> fieldXpath = "//input[@id='last_name']";
            case "working_hours.monday.from" -> fieldXpath = "//input[@id='working_hours.monday.from']";
            case "working_hours.monday.to" -> fieldXpath = "//input[@id='working_hours.monday.to']";
            default -> {System.out.println("Field " + TextFieldName + " not found");}

        };
        getDriver().findElement(By.xpath(fieldXpath)).sendKeys(value);
    }



//_____________________assertion isTrue
    @And("Dan confirming  text {string} displayed on page")
    public void danConfirmingTextDisplayedOnPage(String text) {
String actualXpath = "";
      String addnewSpecialist =  "//span[text()='New specialist']";
              String PatientAccountName = "//h1[contains(text(),'Ben Simpson')]";
              String adminAccountName = "//h1[contains(text(),'Calvin Grant')]";
              String NewSpesialist ="//td[contains(text(),'FirstnameSelenium LastNameSelenium')]";
              String popUpremovalConfirm = "//p[contains(text(),'Are you sure you want to remove this specialist?')]";

        switch (text) {

            case "New specialist" -> actualXpath = addnewSpecialist;
            case "Ben Simpson" -> actualXpath = PatientAccountName;
            case "Calvin Grant" -> actualXpath = adminAccountName;
            case "FirstnameSelenium LastNameSelenium" ->actualXpath=NewSpesialist;
            case "Are you sure you want to remove this specialist?"->actualXpath = popUpremovalConfirm;
            default -> {System.out.println("Confirmation text '"+ text + "' not found");}
        };
        assertThat(getDriver().findElement(By.xpath(actualXpath)).isDisplayed()).isTrue();
    }

    //________________________Assertion isFalse
    @Then("Dan confirming  text {string} is not displayed on page")
    public void danConfirmingTextIsNotDisplayedOnPage(String text) {
        //assertThat(getDriver().findElement(By.xpath("//td[contains(text(),'"+text+"')]")).isDisplayed()).isFalse();

        assertThat(getDriver().findElements(By.xpath("//td[contains(text(),'"+text+"')]")).isEmpty());
    }

    @And("Dan refresh current page")
    public void danRefreshCurrentPage() {
        getDriver().navigate().refresh();
    }

    @And("wait for {int} sec")
    public void waitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }



}
