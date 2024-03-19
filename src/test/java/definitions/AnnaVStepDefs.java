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
       // getDriver().get(sApplicationName);
        switch (sApplicationName) {
            case "MedicenterV2":
                getDriver().get(XpathLibrary.sMedicenterURLV2);
                break;
            case "MedicenterV1":
                getDriver().get(XpathLibrary.sMedicenterURLV1);
                break;
            case "Google":
                getDriver().get(XpathLibrary.sGoogleURL);
                break;
            default:
                System.out.println(" No URL found for this name");
        }

    }

    @Then("AnnaV click on {string} button")
    public void annavClickOnButton(String sButtonName) {
       // String xPathLoginButton = "//button[contains(text(),'Login')]";
       // String xPathSignInButton = "//button[contains(text(),'Sign in')]";

        switch(sButtonName){
            case "Login" :
                getDriver().findElement(By.xpath(XpathLibrary.sLoginButton)).click();
                break;
            case "Sign in":
                getDriver().findElement(By.xpath(XpathLibrary.sSignInButton)).click();
                break;
            default:
                System.out.println("Cannot find the button");
        }


    }

    @Then("AnnaV type {string} to {string} field")
    public void annavTypeToField(String sValue , String sTextFieldName) {
        //String sEmailTextFieldXPath = "//input[@id='email']";
       // String sPasswordTextFieldXPath = "//input[@id='password']";
        switch (sTextFieldName){
            case "Email":
                getDriver().findElement(By.xpath(XpathLibrary.sEmailTextFieldXPath)).sendKeys(sValue);
                break;

            case "Password":
                getDriver().findElement(By.xpath(XpathLibrary.sPasswordTextFieldXPath)).sendKeys(sValue);
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
