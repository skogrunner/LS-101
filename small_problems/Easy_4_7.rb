# Easy 4 - problem 7 - Convert a String to a Number!
# Create a method that takes a String of digits.
# Return the number as an integer.
# Do not check for non-digits. Do not use any standard conversion method,
#   such as String#to_i or Integer()

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

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# hexadecimal version

HEX_DIGITS = { '0' => 0,
               '1' => 1,
               '2' => 2,
               '3' => 3,
               '4' => 4,
               '5' => 5,
               '6' => 6,
               '7' => 7,
               '8' => 8,
               '9' => 9,
               'A' => 10,
               'B' => 11,
               'C' => 12,
               'D' => 13,
               'E' => 14,
               'F' => 15 }.freeze

def hexadecimal_to_integer(str)
  str.upcase.chars.reduce(0) { |num, char| 16 * num + HEX_DIGITS[char] }
end

puts hexadecimal_to_integer('4D9f') == 19871
