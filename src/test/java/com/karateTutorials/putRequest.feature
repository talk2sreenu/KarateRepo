Feature: PUT operation for the service

Background:
	* def urlBase = 'https://reqres.in'
	* def usersPath = '/api/users'
	
Scenario: Verifying the PUT operation on the service
	Given url urlBase + usersPath + '/2'
	And request {name: 'Srini Updated', job:'Automation SDET'}
	When method PUT
	Then status 200
	* def nameVal =  $..name
	* print nameVal
	And match $..name contains 'Srini Updated'