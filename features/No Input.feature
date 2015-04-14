Feature: No Input

  As a calculator user
  I want to be able to use no input
  So that the calculator still returns a valid result
  
Background:
  Given a calculator
  
Scenario: No input

  When the input is ""
  Then the result is 0
  
Scenario: Whitespace input

  When the input is "  "
  Then the result is 0
