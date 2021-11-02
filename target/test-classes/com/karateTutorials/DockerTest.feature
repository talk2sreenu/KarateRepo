Feature: Validating the Docker chrome

Background:
	* configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true}
	#karate.configure('driverTarget', {docker: 'justinribeiro/chrome-headless', showDriverLog: true});
	#* configure driver = {type:'geckodriver', start: false, webDriverUrl:'http://localhost:4445/wd/hub'}
	#* call read('sample.js') {browserName:'chrome'}
	
Scenario: Checking the karate-chrome driver
	Given driver 'https://www.google.com'
	* maximize()
	* screenshot()
	* click("//a[contains(text(), 'Store')]")
	* delay(1000)
	* back()
	* click("//a[contains(text(), 'About')]")