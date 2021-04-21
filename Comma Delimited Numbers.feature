Feature: Comma Delimited Numbers

  As a calculator user
  I want to be able to enter numbers delimited by comma
  And get the sum of those numbers

  Background:

    Given a calculator
  
  Scenario Outline: Two Numbers

    When the input is "<input>"
    Then the result is <result>

    Examples:
    | input   | result |
    | 0,1     | 1      |
    | 1,2     | 3      |
    | 10,20   | 30     |
    | 101,202 | 303    |

  Scenario Outline: Multiple Comma Delimited Numbers

    When the input is "<input>"
    Then the result is <result>

    Examples:
      | input               | result |
      | 1,2,3               | 6      |
      | 1,2,3,4             | 10     |
      | 1,1,1,1,1,1,1,1,1,1 | 10     |
  
  Scenario: Consecutive delimiters is an error

    When the input is "1,,2"
    Then there is an exception "Multiple delimiters encountered"

