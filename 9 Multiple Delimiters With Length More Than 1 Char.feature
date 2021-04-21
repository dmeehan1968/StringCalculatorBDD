Feature: Step 9, Multiple Delimiters with Length More Than One Char

  https://osherove.com/tdd-kata-1

  make sure you can also handle multiple delimiters with length longer than one char

  Background:

    Given a calculator

  Scenario Outline: Multiple string delimiters with length more than one char

    When the input is "<string>"
    Then the result is <result>

    Examples:
      | string                        | result  |
      | //[**][%%]\n1**2%%3           | 6       |
      | //[**][%%][abc]\n1**2%%3abc4  | 10      |

