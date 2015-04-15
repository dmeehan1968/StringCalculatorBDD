Feature:

  As a calculator user
  I want to be able to enter numbers delimited by comma
  And get the sum of those numbers

Background:

  Given a calculator
  
Scenario: Two Numbers

  When the input is "<input>"
  Then the result is <result>
  
  Examples:
  | input   | result |
  | 0,1     | 1      |
  | 1,2     | 3      |
  | 10,20   | 30     |
  | 101,202 | 303    |
  
Scenario: Multiple Comma Delimited Numbers

  When the input is "<input>"
  Then the result is <result>
  
  Examples:
  | input               | result |
  | 1,2,3               | 6      |
  | 1,2,3,4             | 10     |
  | 1,1,1,1,1,1,1,1,1,1 | 10     |
  
Scenario: Consequtive delimiters is an error

  When the input is "1,\n"
  Then there is an error "Consequtive delimiters not allowed"
  
