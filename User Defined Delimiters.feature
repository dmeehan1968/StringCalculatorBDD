Feature: User Defined Delimiters

  As a calculator user
  I want to be able to override the default delimiters
  So that I can use my own delimiters
  
Background:

  Given a calculator
  
Scenario: Use semi-colon as delimiter
  
  When the input is "//;\n1;2"
  Then the result is 3
