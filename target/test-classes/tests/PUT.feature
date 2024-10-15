Feature: PUT API Demo

  Scenario: PUT API Demo 1 -Full update
    Given url 'https://reqres.in/api/users/2'
    And request {'name': 'Prabhu3', 'job': 'SE'}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
