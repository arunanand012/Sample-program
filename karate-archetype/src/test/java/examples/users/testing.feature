Feature: testing the keywords

  Scenario: Define a string
    Given url 'https://jsonplaceholder.typicode.com/comments?postId=1'
    When method Get
    Then status 200
    And print response
    And string string_type = response[0]
    And print string_type
    And string convert_num_to_string = response[0].id
    And print convert_num_to_string
    And match convert_num_to_string == '1'
    And def name = 'String demo'
    And string dynamic_string = '{\r"name":"'+name+'",\n"postId":1,\n"id":1,\n"body":"new testing",\n"email":"Eliseo@gardner.biz"} '
    And print dynamic_string

  Scenario Outline: Define a text
    And text textQuery =
"""
{
name: <name>,
email: <e-mail>
}
"""
    And print textQuery
    Examples:
      |name       | e-mail                               |
      |'ram'   |'ram@gmail.com'                    |
      |'abi'|'abi@email.com'                        |
      |'aravind'     |['aravind123@email.com','aravi@gmail.com'] |

  Scenario: Define a table
    And table tableObj
      |S.no |name      | e-mail             |
      |1    |'ram'   |'ram@gmail.com'  |
      |2    |'abhilasha'|'ab@email.com'     |
      |3   |'aravind'      |['aravind123@email.com','aravi@gmail.com'] |
    And print tableObj


      Scenario:
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'comments'
    And params {postId:1,id:2}
    When method Get
    Then status 200


