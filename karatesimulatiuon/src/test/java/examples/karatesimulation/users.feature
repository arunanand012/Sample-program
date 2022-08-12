Feature: Karatesimulation test

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")
    * def requestpayload =
      """
      {
      "name": "akila",
      "email": "akila28@gmail.com",
      "gender": "male",
      "status": "active"
      }
      """
    * configure logPrettyResponse = true
  Scenario:
  Get the listed users details
    Given path '/users'
    And request {name:'Ajay'}
    And request {job: 'member'}
    When method post
    Then status 201
    And print response
    And match response =={ "job": "member","id": "#string","createdAt": "#ignore"}

  Scenario:
  get the data from reqres server
    Given  path ;'/users?2'
    When method get
    Then status 200
    And print response

  Scenario:
  get the data from jsonpath finder server
    Given  path ;'/users'
    When method get
    Then status 200
    And print response
    * print prettyresponse = response

  Scenario:
  get the data from response json file
    Given path '/users'
    And request {name:'Arun'}
    And request {job: 'Leader'}
    When method post
    Then status 201
    And match response == expectedOutput
    And print response

  Scenario:
  get the data of all users and print the jsonresponse
    * def query = { status: 'active'}
    Given url 'https://gorest.co.in/public/v2/users/32'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    And print jsonResponse

  Scenario Outline: :
       Given url 'https://jsonplaceholder.typicode.com/' + '<url_path>' + '?postId=1'
      When method Get
      Then status 200
      Examples:
        |url_path |
        |comments |
        |comments1|
        |comments2|

