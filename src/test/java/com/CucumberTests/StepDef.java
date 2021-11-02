package com.CucumberTests;

import io.cucumber.java.en.Given;

public class StepDef {

	@Given("^Hello$")
	public void sayHello() {
		System.out.println("This is from Given Hello Method");
	}
}
