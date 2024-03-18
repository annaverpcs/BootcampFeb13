package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @When("AnnaV launch {string}")
    public void annavLaunch(String sApplicationName) {
        getDriver().get(sApplicationName);
    }

    @Then("AnnaV click on {string} button")
    public void annavClickOnButton(String sButtonName) {
        String xPathLoginButton = "//button[contains(text(),'Login')]";
        String xPathSignInButton = "//button[contains(text(),'Sign in')]";

        switch(sButtonName){
            case "Login" :
                getDriver().findElement(By.xpath(xPathLoginButton)).click();
                break;
            case "Sign in":
                getDriver().findElement(By.xpath(xPathSignInButton)).click();
                break;
            default:
                System.out.println("Cannot find the button");
        }


    }

    @Then("AnnaV type {string} to {string} field")
    public void annavTypeToField(String sValue , String sTextFieldName) {
        String sEmailTextFieldXPath = "//input[@id='email']";
        String sPasswordTextFieldXPath = "//input[@id='password']";
        switch (sTextFieldName){
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

    @And("AnnaV page title is {string}")
    public void annavPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }
}
