Feature: Step 5, Negatives Not Allowed

  https://osherove.com/tdd-kata-1

  Calling Add with a negative number will throw an
  exception “negatives not allowed” - and the negative that was passed.
  if there are multiple negatives, show all of them in the exception message.

  Background:

    Given a calculator

  Scenario Outline: Negatives not allowed

    When the input is "<string>"
    Then there is an exception "Negatives not allowed, got <negatives>"

    Examples:
      | string          | negatives |
      | -1              | -1        |
      | 1,-2            | -2        |
      | 1,2,3,4,-5,6,-7 | -5, -7    |

