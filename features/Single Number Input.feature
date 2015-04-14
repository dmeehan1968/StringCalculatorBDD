Feature: Single Number Input

  As a calculator user
  I want to be able to input a single number
  So that I receive the correct result
  
Background:

  Given a calculator
  
Scenario Outline: Single Digit Input

  When the input is "<input>"
  Then the result is "<result>"
  
  Examples:
  
  | input | result |
  | 0     | 0      |
  | 1     | 1      |
  | 9     | 9      |
  
