Feature: New Line Delimiters

  As a calculator user
  I want to be able to use newlines as a number delimiter as well as commas
  So that I can use either delimiter
  
Background:
  
  Given a calculator
  
  
Scenario: Mixed comma or newline delimiters

  When the input is "1\n2,3"
  Then the result is 6
