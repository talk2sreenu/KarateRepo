Feature: My First Karate Framework feature

	Background: 
		* url 'https://reqres.in/api'
		* header Accept = 'application/json'
		* configure driver = {type:browserType}
		
	Scenario: First Karate Scenario
	Given path '/users'
	When method GET
	Then status 200
	And print response
	And print responseTime
	And print responseHeaders
	And print name
	
	Scenario: verifying the config values
	Given driver 'https://www.google.com'
	* maximize()
	* print baseURL
	* print name