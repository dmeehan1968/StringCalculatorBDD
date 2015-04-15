Feature: String Delimiters

  As a calculator user
  I want to be able to specify string delimiters
  So that I can use any type of delimiter
  
Background:

  Given a calculator
  
Scenario: String Delimiter

  When the input is "//[***]\n1***2***3"
  Then the result is 6
