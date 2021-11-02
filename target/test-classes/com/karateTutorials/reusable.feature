Feature: Reusable Tests on reqres.in
  Scenario: call post and delete with reusable features and delete with conditional operation
  * table users
  |name     |job       |
  |'max'    |'tester1' |
  #* def result = call read('post2.feature') users
  * def result = karate.call('post2.feature', users)
  * def id = result[0].response.id
  * print id
  * table ids
  |id|
  |id|
  * def res = result.responseStatus == 201 ? {} : karate.call('delete.feature', ids)
  