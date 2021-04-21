Feature: Step 7, Delimiters can be of any length

  https://osherove.com/tdd-kata-1

  Delimiters can be of any length with the following format: “//[delimiter]\n” for example: “//[***]\n1***2***3” should return 6

  Background:

    Given a calculator

  Scenario Outline: Multibyte delimiters can be specified

    When the input is "<string>"
    Then the result is <result>

    Examples:
      | string             | result  |
      | //[***]\n1***2***3 | 6       |

