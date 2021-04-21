Feature: Step 4, Support Different Delimiters

  https://osherove.com/tdd-kata-1

  Support different delimiters
  to change a delimiter, the beginning of the string will contain a
  separate line that looks like this: “//[delimiter]\n[numbers…]”
  for example “//;\n1;2” should return three where the default
  delimiter is ‘;’.
  the first line is optional.  all existing scenarios should still be supported

  Background:
    Given a calculator

  Scenario Outline: Delimiters can be redefined
    When the input is "<string>"
    Then the result is <result>

    Examples:
      | string        | result      |
      | //;\n1;2      | 3           |
      | //;\n1;2;3    | 6           |

