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
  
Scenario Outline: Multiple Digit Input

  When the input is "<input>"
  Then the result is "<result>"
  
  Examples:
  
  | input      | result     | comment |
  | 10         | 10         |
  | 11         | 11         |
  | 99         | 99         |
  | 123        | 123        |
  | 99         | 99         |
  | 2147483647 | 2147483647 | max signed 32 bit int   |
  | 4294967296 | 4294967296 | max unsigned 32 bit int |
