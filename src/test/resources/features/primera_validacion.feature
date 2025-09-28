Feature: pruebas

  @TESCID001
  Scenario Outline: primera validación api Get
    Given url "https://reqres.in" + "/api/users/" + "<pagina>"
    When method get
    Then status <statusCode>
    And match response.data.email == '<email>'
    And match response.data.last_name == 'Weaver'

    Examples:
      | statusCode | email                  | pagina |
      | 200        | janet.weaver@reqres.in | 2      |

  @TESCID002
  Scenario: segunda validación api Get
    Given url "https://reqres.in/api/unknown/2"
    When method get
    Then status 200