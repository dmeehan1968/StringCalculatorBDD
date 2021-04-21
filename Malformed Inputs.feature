Feature: Malformed Inputs

  https://osherove.com/tdd-kata-1

  A bonus not in the original Kata, with expected exception messages and seemingly malformed
  inputs which are acceptable

  Background:
    Given a calculator

  Scenario Outline: Malformed inputs throw exceptions
    When the input is "<string>"
    Then there is an exception "<message>"

    Examples:
      | string             | message                                         |
      | 1@2                | Unexpected delimiter found                      |
      | 1@                 | Unexpected delimiter found                      |
      | @1                 | Invalid characters where number expected        |
      | 1,,                | Multiple delimiters encountered                 |
      | //;1;2             | Missing newline after delimiters                |
      | //[**\n1*2         | Missing closing bracket on multibyte delimiter  |
      | //[**]1*2          | Missing newline after delimiters        |
      | //[**]\n1*2        | Unexpected delimiter found                      |

  Scenario Outline: Malformed inputs that are considered good
    When the input is "<string>"
    Then the result is <result>

    Examples:
      | string             | result         |
      | //**]\n1*2         | 3              |

