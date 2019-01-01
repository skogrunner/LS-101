# Easy 4 - problem 10 - Convert a Signed Number to a String!
# Create a method that takes an Integer.
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

def signed_integer_to_string(num)
  sign = if num > 0
           '+'
         elsif num < 0
           '-'
         else
           ''
         end
  sign + integer_to_string(num.abs)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
