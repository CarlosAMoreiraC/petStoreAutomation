Feature: Get pet by ID

    Background:
        * url 'https://petstore.swagger.io/v2'

    Scenario: Get an existing pet by ID
        Given path 'pet', 1
        When method get
        Then status 200
        And match response ==
        """
            {
            id: 1,
            category: { id: 1, name: 'perro' },
            name: 'Luna',
            photoUrls: ['https://ejemplo.com/luna.jpg'],
            tags: [{ id: 1, name: 'domestico' }],
            status: 'available'
            }
        """