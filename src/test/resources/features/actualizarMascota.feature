Feature: Update a pet

    Background:
        * url 'https://petstore.swagger.io/v2'

    Scenario: Update pet name and status using form
        Given path 'pet', 1
        And form field name = 'Max'
        And form field status = 'sold'
        When method post
        Then status 200