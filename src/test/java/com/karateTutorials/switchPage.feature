Feature: Reusable Post Tests on reqres.in [post2.feature]
  Background:
		* call read('classpath:com/baseUtils/driverUtils.js') {browserVal: 'chromedriver'}
  Scenario: Post user Data-Driven
     Given driver 'https://www.airbnb.co.in/'
     * delay(5000)
     * waitFor("//button[.='OK']").highlight().submit().click()
     * waitFor('a._gf4ex9').submit().click()
     * print driver.url
     * print driver.title
     * switchPage('covidsafety')
     #* switchPage(2)
     * delay(5000)
     * screenshot()
     * print driver.url
     * print driver.title
     * close()
     * delay(3000)