Feature: Config Demo

  Background: 
    * url baseURL
    * header Accept = 'application/json'

  Scenario: Config Demo 1
    Given print name

  #simple GET Request
  Scenario: GET Demo 1
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
