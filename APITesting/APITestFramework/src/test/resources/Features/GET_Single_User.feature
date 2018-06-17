Feature: Retrieve user information

  Scenario: Get single user information
    Given The APIs are up and running for "https://reqres.in/"
    When a user perfoms to get a request to "api/users/2"
    Then the response code should be 200
    And I should json response with pairs on filtered "data" node
      | id         |                                                                  2 |
      | first_name | Janet                                                              |
      | last_name  | Weaver                                                             |
      | avatar     | https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg |
