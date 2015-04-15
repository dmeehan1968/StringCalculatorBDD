Feature: String Delimiters

  As a calculator user
  I want to be able to specify string delimiters
  So that I can use any type of delimiter
  
Background:

  Given a calculator
  
Scenario: String Delimiter

  When the input is "//[***]\n1***2***3"
  Then the result is 6

Scenario: Multiple String Delimiters

  When the input is "//[*][%]\n1*2%3"
  Then the result is 6

Scenario: Multiple String Delimiters with length longer than 1

  When the input is "//[**][%%]\n1**2%%3"
  Then the result is 6
