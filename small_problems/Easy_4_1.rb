# Easy 4 - problem 1 - Short Long Short
# Create a method that takes two Strings as arguments.
# Determine the longest of the two strings, then
# return a contatenation of the shortest, longest, and shortest string.

def short_long_short(str1, str2)
  str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
