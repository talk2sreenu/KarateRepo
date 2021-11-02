Feature: Verifying the JS Calls

Background:
	* call read('driverTest.feature') {browserVal: 'chrome'}
	
Scenario: Sample test for JS Call
	Given driver 'https://www.seleniumeasy.com/test/basic-first-form-demo.html'
	* maximize()
	* waitUntil("document.readyState == 'complete'")
	* input('input#user-message', 'Hello World')
	* click("//button[text()='Show Message']")
	* delay(5000)
	* def getTextVal = 
	"""
	function() {
		var element = document.getElementById('display');
		var text = element.innerText || element.textContent;
		return text;
	}
	"""
	#* def temp = getTextVal()
	#* print temp
	#* def outputVal = karate.eval("document.getElementById('display').textContent");
	* def outputVal = script("document.getElementById('display').textContent");
	* print outputVal
	* def sel = "button[onclick*='total']"
	* script("document.getElementById('sum1').value='2'");
	* script("document.getElementById('sum2').value='3'");
	* delay(3000)
	* script("document.querySelector(\""+sel+"\").dispatchEvent(new MouseEvent('click'))");
	* scroll("button[onclick*='total']").highlight()
	* screenshot()