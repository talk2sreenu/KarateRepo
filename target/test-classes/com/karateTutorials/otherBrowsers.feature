Feature: Verifying other browsers

Scenario: CHeck IEDriver
	#* configure driver = {type: 'iedriver', executable: 'C:/Drivers/IEDriverServer.exe'}
	* configure driver = {type: 'msedgedriver', executable: 'C:/Drivers/msedgedriver.exe'}
	Given driver 'https://www.google.com'