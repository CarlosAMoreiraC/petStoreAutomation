Feature: Add a new pet

    Background:
    # Configuración base de la URL para la API
        * url 'https://petstore.swagger.io/v2'

    Scenario: Agregar una nueva mascota
        Given path 'pet'
        And request
      """
      {
        "id": 1,
        "category": {
          "id": 1,
          "name": "perro"
        },
        "name": "Luna",
        "photoUrls": [
          "https://ejemplo.com/luna.jpg"
        ],
        "tags": [
          {
            "id": 1,
            "name": "domestico"
          }
        ],
        "status": "available"
      }
      """
        When method post
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