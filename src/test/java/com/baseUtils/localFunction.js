function fn(localVar){
	var tempVar = localVar.browserName;
	karate.log(tempVar + ' browser selected for the execution');
	
	if (tempVar == 'chrome') {		
		karate.configure('driver', {type:'chrome', userDataDir:'target/chromeDriver'});
	}
	else if(tempVar == 'geckodriver') {
		karate.configure('driver', {type: tempVar, userDataDir:'target/firefoxDriver', executable:'C:/Drivers/geckodriver.exe'});
	}
	else if(tempVar == 'chromedriver') {
		karate.configure('driver', {type: tempVar, userDataDir:'target/chromeDriver', executable:'C:/Drivers/chromedriver.exe'});
	}
	else{
		karate.log('Selected browser not available');
		karate.abort();
	}
}