Feature: POST API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")

  #Simple POST Request
  Scenario: POST Demo 1
    Given url 'https://reqres.in/api/users'
    And request {'name': 'prabhu', 'Job': 'Leader'}
    When method POST
    Then status 201
    And print response

  #POST Request with Background
  Scenario: POST Demo 2
    Given path '/users'
    And request {'name': 'prabhu2', 'Job': 'Leader2'}
    When method POST
    Then status 201
    And print response

  #POST Request with Assertion
  Scenario: POST Demo 3
    Given path '/users'
    And request {'name': 'prabhu2', 'Job': 'Leader2'}
    When method POST
    Then status 201
    And match response == {  "name": "prabhu2",  "Job": "Leader2",  "id": "#string",  "createdAt": "#ignore"}
    And print response

  #POST Request with response from file
  Scenario: POST Demo 4
    Given path '/users'
    And request {'name': 'prabhu2', 'Job': 'Leader2'}
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

  #POST Request with request body from file
  Scenario: POST Demo 5
    Given path '/users'
    And def requestBody = read("request1.json")
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

  #POST Request with request body from file
  Scenario: POST Demo 6
    Given path '/users'
    And def projectPath = karate.properties["user.dir"]
    And def filePath = projectPath + '/data/request1.json'
    And print filePath
    And def requestBody = read(filePath)
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

  #POST Request with request body setting variable in POST request body 
  Scenario: POST Demo 7
    Given path '/users'
    And def requestBody = read("request1.json")
    And set requestBody.Job = 'Engineer'
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response
    
    #for full update use PUT method and partial update use PATCH method
    
