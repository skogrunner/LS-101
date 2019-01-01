# Easy 8 - problem 3 - Leading Substrings
# Create a method that takes a String as the only argument.
# Return a list of all possible substrings that start at the beginning
#   of the String.
# Order from shortest to longest.

def substrings_at_start(str)
  substrings = []
  1.upto(str.size) { |i| substrings << str[0, i] }
  substrings
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
puts substrings_at_start('') == []
