# Easy 4 - problem 9 - Convert a Number to a String!
# Create a method that takes a non-negative integer.
# Return the string representation of the integer.
# Do not use any standard conversion method, such as Integer#to_s,
#   String(), or Kernal#format, etc

DIGITS = ('0'..'9').to_a.freeze

def integer_to_string(num)
  str_num = ''
  loop do
    num, digit = num.divmod(10)
    str_num.prepend(DIGITS[digit])
    break if num.zero?
  end
  str_num
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
