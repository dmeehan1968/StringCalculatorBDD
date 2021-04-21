Feature: Ignore Big Numbers

  As a calculator user
  I want numbers over 1000 to be ignored
  So that I can still get a valid result
  
Background:

  Given a calculator
  
Scenario Outline: Big Numbers Ignored

  When the input is "<input>"
  Then the result is <result>
  
  Examples:
  | input    | result |
  | 1,2,1000 | 1003   |
  | 1001,2   | 2      |
  
