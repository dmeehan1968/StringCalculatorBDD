Feature: Negative Numbers

  As a calculator user
  I want negative numbers to produce an error
  So that negatives cannot influence the result
  
Background:

  Give a calculator
  
Scenario Outline: Negative produces an error

  When the input is "<input>"
  Then there is an error "Negatives not allowed: <negatives>"
  
  Examples:
  | input  | negatives |
  | 1,-1   | -1        |
  | -2,1   | -2        |
  | -1     | -1        |
  | -1, -2 | -1, -2    |
