# Easy 2 - problem 7 - Even Numbers
# Create a program that prints all even numbers from 1 to 99, inclusive.
# Each number should be printed on a separate line.

# See problem 6. This is a clone of problem 6, modified for even numbers.

2.step(99, 2) { |i| puts i }

# second solution

(1..99).select(&:even?).each { |i| puts i }
