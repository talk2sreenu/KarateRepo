Feature: Get Tests on reqres.in

Background:
	* def urlBase = 'https://reqres.in'
	* def usersPath = '/api/users'
	
Scenario: Get Users list
	Given url  urlBase+ usersPath  + '?page=2'
	When method get
	Then status 200
	And print response
	
Scenario: Get users list and check value in field
	Given url  urlBase+ usersPath
	When method get
	Then status 200
	* print response
	And match $..first_name contains 'Emma'
	And match $..id contains '#notnull'