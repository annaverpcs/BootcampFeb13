package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AlekseiShStepdefs {
    @Given("AlekseiSh launch {string}")
    public void alekseishLaunch(String sApplicationName) {
    getDriver().get(sApplicationName);
    }

    @Then("AlekseiSh click on {string} button")
    public void alekseishClickOnButton(String sButtonName) {
        String xPathLoginButton = "//button[contains(text(),'Login')]";
        String xPathSignInButton = "//button[contains(text(),'Sign in')]";
        switch (sButtonName) {
            case "Login":
                getDriver().findElement(By.xpath(xPathLoginButton)).click();
                break;
            case "Sign in":
                getDriver().findElement(By.xpath(xPathSignInButton)).click();
                break;
            default:
                System.out.println("Cannot find the button");
        }
    }

    @Then("AlekseiSh type {string} to {string} field")
    public void alekseishTypeToField(String sValue, String sTextFieldName) {
        String sEmailTextFieldXPath = "//input[@id='email']";
        String sPasswordTextFieldXPath = "//input[@id='password']";
        switch (sTextFieldName) {
            case "Email":
                getDriver().findElement(By.xpath(sEmailTextFieldXPath)).sendKeys(sValue);
                break;
            case "Password":
                getDriver().findElement(By.xpath(sPasswordTextFieldXPath)).sendKeys(sValue);
                break;
            default:
                System.out.println("The field was not found");
        }
    }

    @Then("AlekseiSh page title is {string}")
    public void alekseishPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }
}

