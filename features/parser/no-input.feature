Feature: No input

  As a user
  I want to no enter an input
  So that I still get a result
  
Scenario: No input

  When the input is ""
  Then the result is 0
  
Scenario: Whitespace input

  When the input is "  "
  Then the result is 0
