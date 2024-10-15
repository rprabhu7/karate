Feature: GET API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #simple GET Request
  Scenario: GET Demo 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  #GET API with background
  Scenario: GET Demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  #GET API with path and parametr
  Scenario: GET Demo 3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  #GET API with Assertions
  Scenario: GET Demo 4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.data[3].id == 10
		And match response.data[4].last_name == 'Edwards'