Feature: Step 1, Create a simple string calculator

  https://osherove.com/tdd-kata-1

  Create a simple String calculator with a method signature:
  ———————————————
  int Add(string numbers)
  ———————————————
  The method can take up to two numbers, separated by commas, and will return their sum.
  for example “” or “1” or “1,2” as inputs.
  (for an empty string it will return 0)

  Background:

    Given a calculator

  Scenario Outline: The method can take two numbers, separated by commas, and will return their sum

    When the input is "<input>"
    Then the result is <result>

    Examples:
      | input   | result |
      | 0,1     | 1      |
      | 1,2     | 3      |

  Scenario Outline: A single number, comprised of one or more digits

    When the input is "<input>"
    Then the result is <result>

    Examples:

      | input | result |
      | 0     | 0      |
      | 1     | 1      |
      | 9     | 9      |
      | 10    | 10     |
      | 99    | 99     |
      | 999   | 999    |

  Scenario: An empty string will return 0
    
    When the input is ""
    Then the result is 0

  Scenario Outline: Combinations of single and multiple digit numbers

    When the input is "<input>"
    Then the result is <result>

    Examples:

      | input      | result     |
      | 5,20       | 25         |
      | 20,5       | 25         |
      | 10,20      | 30         |
      | 101,202    | 303        |
      | 123,123    | 246        |
