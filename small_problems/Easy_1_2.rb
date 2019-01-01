# Easy 1 - problem 2 - Odd
# Write a method that takes one integer argument.
# This method returns true if the number's absolute value is odd,
#   else it returns false.
# The argument is assumed to be a valid integer.

def is_odd?(number)
  number % 2 == 1
end

def is_odd?(number)
  !(number % 2).zero?
end

def is_odd?(number)
  number.remainder(2).abs == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
