Feature: Step 6, Numbers Bigger Than 1000 Should Be Ignored

  https://osherove.com/tdd-kata-1

  Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

  Background:

    Given a calculator

  Scenario Outline: Numbers bigger than 1000 should be ignored
    When the input is "<string>"
    Then the result is <result>

    Examples:
      | string          | result  |
      | 2,1001          | 2       |
      | 1000,1001       | 1000    |
      | 1,2,3,1000      | 1006    |

