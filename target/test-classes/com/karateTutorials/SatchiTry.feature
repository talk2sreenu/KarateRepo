Feature: Reusable Post Tests on reqres.in [post2.feature]
  Background:
  * def urlBase = 'https://gorest.co.in/public/v1/users'
  * def token = '64d9be8c15b8d41ccf42a3f72f093718f50c7ab54d7f292904ef221700326201'
  * header Authorization = 'Bearer ' + token
  Scenario: Post user Data-Driven
     Given url  urlBase
     And request {gender: 'male', name:'Srini123', email:'Srinikaki123@gmail.com', status:'Active'}
     When method POST
     Then status 201
  
  Scenario: Get user Data-Driven
     Given url  urlBase
     When method GET
     Then status 200
     * print response.data[0].id