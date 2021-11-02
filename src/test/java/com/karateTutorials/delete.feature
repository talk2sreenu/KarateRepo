@ignore
Feature: Reusable Delete Tests on reqres.in [delete.feature]
  Background:
  * def urlBase = 'https://reqres.in'
  * def usersPath = '/api/users'
  Scenario: Delete user
     * def path = urlBase + usersPath +'/' + id
     Given  url path
     When method DELETE
     Then status 204  