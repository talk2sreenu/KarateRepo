Feature: Validating JSON

Background:
	* def dataRep = read('jsonFile.json')
	
Scenario: checking the JSON Files
	* print dataRep.TestCase1.UserName

	