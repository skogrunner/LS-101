# Easy 1 - problem 9 - Sum of Digits
# Write a method that takes one argument, a positive integer.
# It returns the sum of the argument's digits.

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
