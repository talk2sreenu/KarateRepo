@JenkinsTest
Feature: Verify the function call 

Scenario Outline: Using <browserConfig>
	* call read('classpath:com/baseUtils/driverUtils.js') {browserName: <browserConfig>}
	Given driver <applicationURL>
	* delay(5000)
	* screenshot()
	* driver 'https://www.google.com'
	* maximize()
	* screenshot()
	* click("//a[contains(text(), 'Store')]")
	* delay(3000)
	* back()
	* click("//a[contains(text(), 'About')]")
	* delay(3000)
	
	Examples:
	|browserConfig|applicationURL|
	|'chromedriver'|'https://www.bing.com'|