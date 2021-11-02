Feature: To invoke browser

	
Scenario: To invoke a browser
	* def localVar = browserVal
	* print localVar
	* karate.log('Browser selected is: '+localVar);
	* if (localVar=='chrome') karate.configure('driver', {type:'chrome', userDataDir:'target/chromeDriver', start: false});
	* if (localVar=='geckodriver') karate.configure('driver', {type:localVar, userDataDir:'target/firefoxDriver', executable:'C:/Drivers/geckodriver.exe'});
	* if (localVar=='chromedriver') karate.configure('driver', {type:localVar, userDataDir:'target/chromeDriver', executable:'C:/Drivers/chromedriver.exe'});