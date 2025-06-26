Feature: Find pets by status

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Find pets with status "available"
    Given path 'pet', 'findByStatus'
    And param status = 'available'
    When method get
    Then status 200
    And match response[*].status contains 'available'

