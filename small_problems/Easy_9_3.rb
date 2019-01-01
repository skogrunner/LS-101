# Easy 9 - problem 3 - Always Return Negative
# Create a method that takes a number as the only argument.
# If the number is positive, return the negative of that number.
# Otherwise, just return the original number.

def negative(num)
  -num.abs
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
