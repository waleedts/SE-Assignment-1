package edu.assignment;


import edu.assaignment.BarcodeScanner;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static org.junit.Assert.*;

public class StepDefinitions {
    BarcodeScanner scanner=new BarcodeScanner();

    @Given("the price of a {string} {int}")
    public void thePrice(String type,int price){
       scanner.add(type,price);
    }
    @When("I checkout {int} {string}")
    public void checkout(int amount,String type){
        scanner.scan(amount, type);
    }
    @Then("the total price should be {int}")
    public void total(int total){
        assertEquals(total,scanner.getTotal());
    }
}
