package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AnnaKrStepDefs {
    @When("AnnaKr launch {string}")
    public void annakrLaunch(String sApplicationName) {
        getDriver().get(sApplicationName);
    }

    @Then("AnnaKr click on {string} button")
    public void annakrClickOnButton(String sButtonName) {
        String xPathLoginButton = "//button[contains(text(),'Login')]";
        String xPathSignInButton = "//button[contains(text(),'Sign in')]";

        switch (sButtonName){
            case "Login" :
                getDriver().findElement(By.xpath(xPathLoginButton)).click();
                break;
            case "Sign in" :
                getDriver().findElement(By.xpath(xPathSignInButton )).click();
                break;
            default:
                System.out.println("Cannot find the button");
        }


    }

    @Then("AnnaKr type {string} to {string} field")
    public void annakrTypeToField(String sValue, String sTextFieldName) {
        String sEmailTextFieldSPath = "//input[@id='email']";
        String sPasswordTextFieldSPath = "//input[@id='password']";
        switch (sTextFieldName){
            case "Email":
                getDriver().findElement(By.xpath(sEmailTextFieldSPath)).sendKeys(sValue);
                break;

            case "Password":
                getDriver().findElement(By.xpath(sPasswordTextFieldSPath)).sendKeys(sValue);
                break;
            default:
                System.out.println("The field was not found");
        }
    }

    @And("AnnaKr page title is {string}")
    public void annakrPageTitleIs(String sPageTitle) {
        assertThat(getDriver().getTitle().contains(sPageTitle));
    }
}
