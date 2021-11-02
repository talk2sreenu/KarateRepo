Feature: Verifying other browsers

Scenario: CHeck IEDriver
	* def dateStringToLong =
  """
  function() {
  	JavascriptExecutor js = (
    return 'value returned from function';
  } 
  """
* print dateStringToLong()