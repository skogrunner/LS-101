# Easy 8 - problem 4 - All Substrings
# Create a method that takes a String as the only argument.
# Return a list of all possible substrings.
# Order from starting position in the original string,
#   then shortest to longest.

# this method (substrings_at_start) returns all substrings starting at
#   position 0, from shortest to longest
def substrings_at_start(str)
  (1..str.size).map { |i| str[0, i] }
end

def substrings(str)
  (0...str.size).map { |i| substrings_at_start(str[i..-1]) }.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
