Feature: To test multi browser testing

Scenario Outline: Using <browserConfig>
	#* call read('classpath:com/baseUtils/driverUtils.js') {browserVal: <browserConfig>}
	* configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true}
	Given driver <applicationURL>
	* delay(5000)
	* screenshot()
	
	Examples:
	|browserConfig|applicationURL|
	#|chrome|'https://www.google.com'|
	|chromedriver|'https://www.bing.com'|
	#|geckodriver|'https://www.google.com'|