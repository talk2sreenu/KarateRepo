Feature: TO test Firefox browser

Background:
	* karate.configure('driver', {type:'chromedriver'})
	
Scenario:
	Given driver 'https://www.google.com'
	* delay(5000)
	* screenshot()