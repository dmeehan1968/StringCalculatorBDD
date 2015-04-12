Feature: Single Number Input

  As a user
  I want to be able to enter a single number
  And get a result

Scenario Outline: Single digit

  When the input is "<input>"
  Then the result is <result>
  
  Examples:
  
  | input | result |
  |   1   |    1   |
  |   2   |    2   |
  |   9   |    9   |
  
Scenario Outline: Multiple Digits

  When the input is "<input>"
  Then the result is <result>
  
  Examples:
  
  | input       | result     |
  | 10          | 10         |
  | 12          | 12         |
  | 20          | 20         |
  | 99          | 99         |
  | 123         | 123        |
  | 1234        | 1234       |
  | 12345       | 12345      |
  | 4294967295  | 4294967295 |
