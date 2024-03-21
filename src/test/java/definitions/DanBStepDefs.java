package definitions;

import io.cucumber.java.en.When;

import static support.TestContext.getDriver;


public class DanBStepDefs {
    @When("Dan open url  {string}")
    public void danOpenUrl(String appName) {
        getDriver().get(appName);
    }




}
