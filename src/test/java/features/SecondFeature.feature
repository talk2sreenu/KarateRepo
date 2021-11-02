Feature: My First Karate Framework feature

	Background: 
		* url 'https://reqres.in/api'
		* header Accept = 'application/json'
		
	Scenario: First Karate Scenario
	Given path '/users'
	When method GET
	Then status 200
	And print response
	And print responseTime
	And print responseHeaders
	And print name