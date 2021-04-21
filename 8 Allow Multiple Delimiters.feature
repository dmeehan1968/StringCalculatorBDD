Feature: Step 8, Allow multiple delimiters

  https://osherove.com/tdd-kata-1

  Allow multiple delimiters like this: “//[delim1][delim2]\n” for example “//[*][%]\n1*2%3” should return 6.

  Background:

    Given a calculator

  Scenario Outline: Multiple string delimiters can be specified

    When the input is "<string>"
    Then the result is <result>

    Examples:
      | string               | result  |
      | //[*][%]\n1*2%3      | 6       |
      | //[**][%%]\n1**2%%3  | 6       |

