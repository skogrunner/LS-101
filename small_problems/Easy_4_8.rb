# Easy 4 - problem 8 - Convert a String to a Signed Number!
# Create a method that takes a String of digits, including an optional sign.
# Return the number as an integer.
# Do not check for non-digits other than '+' or '-'.
# Do not use any standard conversion method, such as String#to_i or Integer()

DIGITS = { '0' => 0,
           '1' => 1,
           '2' => 2,
           '3' => 3,
           '4' => 4,
           '5' => 5,
           '6' => 6,
           '7' => 7,
           '8' => 8,
           '9' => 9 }.freeze

def string_to_integer(str)
  str.chars.reduce(0) { |num, char| 10 * num + DIGITS[char] }
end

def string_to_signed_integer(str)
  case str[0]
  when '-'
    -1 * string_to_integer(str[1..-1])
  when '+'
    string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# refactored method

def string_to_signed_integer(str)
  sign = str[0] == '-' ? -1 : +1
  sign * string_to_integer(str.delete('+-'))
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
