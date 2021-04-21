Feature: Step 3, New Line Delimiters

  https://osherove.com/tdd-kata-1

  Allow the Add method to handle new lines between numbers (instead of commas).
  the following input is ok: “1\n2,3” (will equal 6)
  the following input is NOT ok: “1,\n” (not need to prove it - just clarifying)

  Background:

    Given a calculator

  Scenario: Handle new lines between numbers

    When the input is "1\n2\n3"
    Then the result is 6

  Scenario: Handle new lines and commas between numbers

    When the input is "1\n2,3"
    Then the result is 6

  Scenario Outline: Consecutive delimiters is an error

    When the input is "<input>"
    Then there is an exception "Multiple delimiters encountered"

    Examples:

    | input |
    | 1,\n  |
    | 2,\n2 |
