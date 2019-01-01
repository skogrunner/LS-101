# Easy 5 - problem 1 - ASCII String Value
# Create a method that takes a String as the only argument.
# It returns the sum of the ASCII values of the string characters.

def ascii_value(str)
  str.chars.reduce(0) { |sum, char| sum + char.ord }
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
