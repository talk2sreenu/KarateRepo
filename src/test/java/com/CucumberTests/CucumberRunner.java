package com.CucumberTests;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features="src/test/java/com/CucumberTests", tags = "@Test1 or @Test2")
public class CucumberRunner {

}
