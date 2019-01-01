# Easy 1 - problem 3 - List of Digits
# Write a method that takes one argument, a positive integer.
# A list of the digits in the number is returned.

def digit_list(number)
  return [] unless number.is_a?(Integer) && number > 0
  number.to_s.chars.map(&:to_i)
end

def digit_list(number)
  return [] unless number.is_a?(Integer) && number > 0
  number.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
