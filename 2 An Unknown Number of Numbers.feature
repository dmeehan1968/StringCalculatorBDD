Feature: Step 2, An unknown amount of numbers

  https://osherove.com/tdd-kata-1

  Allow the Add method to handle an unknown amount of numbers

  Background:

    Given a calculator

  Scenario Outline: An unknown number of numbers

    When the input is "<input>"
    Then the result is <result>

    Examples:
      | input               | result |
      | 1,2,3               | 6      |
      | 1,2,3,4             | 10     |
      | 1,1,1,1,1,1,1,1,1,1 | 10     |
      | 10,20,30,40         | 100    |


