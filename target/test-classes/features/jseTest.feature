Feature: Verifying other browsers

Scenario: CHeck IEDriver
	* configure driver = {type: 'chrome', userDataDir:'target/chromeDriver'}
	Given driver 'http://automationpractice.com/index.php'
	* delay(10000)
	* match script('.shop-phone', "function(e){return e.innerHTML}") contains '0123-456-789'