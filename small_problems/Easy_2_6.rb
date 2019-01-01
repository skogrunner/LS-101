# Easy 2 - problem 6 - Odd Numbers
# Create a program that prints all odd numbers from 1 to 99, inclusive.
# Each number should be printed on a separate line.

1.step(99, 2) { |i| puts i }

# second solution

(1..99).select(&:odd?).each { |i| puts i }
