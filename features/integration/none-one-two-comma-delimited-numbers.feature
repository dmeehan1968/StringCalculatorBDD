Feature: Adding none, one or two comma delimited numbers

  In order to add numbers
  As a user
  I want to parse a string of comma delimited numbers

Scenario: No numbers

  Given an input of ""
  Then the result is 0
  
Scenario Outline: One Number

  Given an input of "<input>"
  Then the result is <result>
  
  Examples:
  | input | result |
  | 0     | 0      |
  | 1     | 1      |
  | 12    | 12     |
  | 123   | 123    |
  
Scenario Outline: Comma Delimited Numbers

  Given an input of "<input>"
  Then the result is <result>
  
  Examples:
  | input | result |
  | 1,2   | 3      |
  | 10,20 | 30     |
