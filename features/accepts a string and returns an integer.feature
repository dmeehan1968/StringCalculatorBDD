Feature: Accepts a string and returns a integer

    I want an add method that accepts a string and returns an integer
    As a user
    So that I can get the sum of the numbers expressed in the string
  
Scenario: An empty string returns zero

    When I pass a string containing ''
    Then the result is 0
  
Scenario Outline: The string can contain a single integer

    When I pass a string containing '<string>'
    Then the result is <result>
  
    Examples:
    | string  | result |
    | 0       | 0      |
    | 1       | 1      |
    | 10      | 10     |
    | 100     | 100    |

Scenario Outline: The string can contain two integers separated by comma

    When I pass a string containing '<string>'
    Then the result is <result>
  
    Examples:
    | string  | result |
    | 1,2     | 3      |
    | 10,20   | 30     |
