Feature: Validating Java file instance

Scenario: Validate Java Function
	* def arr = ['Srini', 'Rahi', 'Devi']
	* def cutil = Java.type('com.karateTutorials.KarateRunner')
	* def retVal = new cutil().returnValue(arr)
	* print retVal
	#* def finVal = retVal.returnValue()
	#* print finVal