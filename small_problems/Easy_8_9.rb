# Easy 8 - problem 9 - Convert number to reversed array of digits
# Create a method that takes a positive integer as the only argument.
# Return that number with its digits reversed.

def reversed_number(num)
  return nil unless num.is_a?(Integer) && num > 0
  num.digits.join.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
