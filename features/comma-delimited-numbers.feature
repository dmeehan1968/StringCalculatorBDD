Feature: Comma Delimited Numbers

  As a user
  I want to sum comma delimited numbers
  So that I know the result
  
Scenario Outline:

  When the input is "<input>"
  Then the result is <result>
  
  Examples:
  
  | input    | result |
  | 1,2      | 3      |
  | 0,1      | 1      |
  | 1,2,3    | 6      |
  | 10,20,30 | 60     |
